import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/app/widgets/modules/fetched_list/cubit/fetched_list_cubit.dart';
import 'package:quarterback_flutter/app/widgets/profile/avatar.dart';
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
      child: const CourtView(),
    );
  }
}

class CourtView extends StatelessWidget {
  const CourtView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Court"),
          automaticallyImplyLeading: false,
          centerTitle: false,
        ),
        body: Column(children: [
          // Header
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
                      child: ListView.builder(
                        itemCount: state.items.length,
                        itemBuilder: (context, index) {
                          for (var item in state.items) {
                            return ListTile(
                              leading: Avatar(path: item.sender.avatarPath),
                              title: Text("@${item.sender.username}"),
                              subtitle: Text(item.content),
                            );
                          }
                        },
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
                              const Expanded(
                                child: TextField(
                                  maxLines: 3,
                                  minLines: 2,
                                  decoration: InputDecoration(
                                    hintText: "Comment",
                                    // border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              const SizedSpacer.medium(),
                              IconButton(
                                onPressed: () {},
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
        ]),
      ),
    );
  }
}
