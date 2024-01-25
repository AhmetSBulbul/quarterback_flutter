import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/app/widgets/modules/fetched_list/cubit/fetched_list_cubit.dart';
import 'package:quarterback_flutter/app/widgets/profile/avatar.dart';
import 'package:quarterback_flutter/core/extensions/build_context_extensions.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/core/usecase/list_usecase.dart';
import 'package:quarterback_flutter/features/court/data/court_repository.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/courtpb.pbgrpc.dart';

class CourtScreen extends StatelessWidget {
  const CourtScreen({super.key, required this.courtId});
  final int courtId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // TODO: load single court bloc
        BlocProvider(
          create: (context) =>
              FetchedListCubit<CourtComment>(locator<CourtCommentListUseCase>())
                ..fetchList(
                  ListUseCaseParams(
                    query: Query(districtId: courtId),
                    paginationRequest: PaginationRequest(),
                  ),
                ),
        )
      ],
      child: CourtView(
        courtId: courtId,
      ),
    );
  }
}

class CourtView extends StatelessWidget {
  CourtView({super.key, required this.courtId});
  final int courtId;
  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: false,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            FutureBuilder<Court>(
                future: locator<CourtRepository>().getCourt(courtId),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CourtCard(
                        court: snapshot.data!,
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return const Text("Error");
                  } else {
                    return const Text("Loading...");
                  }
                }),

            //
            const SizedSpacer.medium(),
            // Tabbar
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: AppColors.grey,
                dividerColor: AppColors.white,
                onTap: (index) {},
                tabs: const [
                  Tab(child: Text("Comments")),
                  Tab(
                    child: Text("Games"),
                  )
                ]),
            Expanded(
                child: TabBarView(
              children: [
                // Comments
                BlocBuilder<FetchedListCubit<CourtComment>,
                    FetchedListState<CourtComment>>(builder: (context, state) {
                  return Column(
                    children: [
                      Expanded(
                        child: ListView(children: [
                          for (final item in state.items)
                            ListTile(
                              leading: Avatar(path: item.sender.avatarPath),
                              title: Text("@${item.sender.username}"),
                              subtitle: Text(item.content),
                            )
                        ]

                            // TODO: add comment input
                            ),
                      ),
                      Container(
                        color: AppColors.surface,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedSpacer.medium(),
                            Row(
                              children: [
                                const SizedSpacer.medium(),
                                Expanded(
                                  child: TextField(
                                    controller: _commentController,
                                    maxLines: 3,
                                    minLines: 2,
                                    decoration: const InputDecoration(
                                      hintText: "Comment",
                                      // border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                const SizedSpacer.medium(),
                                IconButton(
                                  onPressed: () async {
                                    if (_commentController.text.isNotEmpty) {
                                      try {
                                        final CourtComment comment =
                                            await locator<CourtRepository>()
                                                .addComment(courtId,
                                                    _commentController.text);
                                        context
                                            .read<
                                                FetchedListCubit<
                                                    CourtComment>>()
                                            .fetchList(ListUseCaseParams(
                                                query:
                                                    Query(districtId: courtId),
                                                paginationRequest:
                                                    PaginationRequest()));
                                      } catch (e) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(e.toString()),
                                          ),
                                        );
                                      } finally {
                                        _commentController.clear();
                                      }
                                    }
                                  },
                                  icon: const Icon(Icons.send),
                                )
                              ],
                            ),
                            const SizedSpacer.large(),
                          ],
                        ),
                      )
                    ],
                  );
                }),
                // Games
                const Center(
                  child: Text("Under Development"),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

// TODO: rearrange sizes
class CourtCard extends StatelessWidget {
  const CourtCard(
      {super.key, required this.court, this.distance, this.featured = false});
  final Court court;
  final bool featured;
  final double? distance;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: !featured
            ? BorderSide.none
            : const BorderSide(
                color: AppColors.white,
                width: 1.2,
              ),
      ),
      elevation: featured ? 4 : 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "https://www.bizimizmir.net/images_haberler/2018/11/12/haber-2018-11-11-1541968659697-bornovada.jpg",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedSpacer.medium(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    court.name,
                    style: context.textTheme.titleSmall
                        ?.copyWith(color: AppColors.white),
                  ),
                  const SizedSpacer.xsmall(),
                  Text(
                    distance != null
                        ? "${distance!.toStringAsFixed(2)} km away"
                        : court.address,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.labelSmall,
                  ),
                  const SizedSpacer.xsmall(),
                  Text(
                    "${court.commentCount} comments",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.labelSmall,
                  ),
                  const SizedSpacer.xsmall(),
                  Text(
                    "${court.checkInCount} people are here",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.labelSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
