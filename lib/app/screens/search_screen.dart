import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quarterback_flutter/app/screens/court/court_screen.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/app/widgets/modules/fetched_list/cubit/fetched_list_cubit.dart';
import 'package:quarterback_flutter/app/widgets/modules/search_with_query/cubit/search_with_query_cubit.dart';
import 'package:quarterback_flutter/app/widgets/profile/avatar.dart';
import 'package:quarterback_flutter/core/extensions/build_context_extensions.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/core/usecase/list_usecase.dart';
import 'package:quarterback_flutter/features/court/data/court_repository.dart';
import 'package:quarterback_flutter/features/user/data/user_repository.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/courtpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/userpb.pbgrpc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchWithQueryCubit(),
        ),
        BlocProvider(
          create: (context) =>
              FetchedListCubit<User>(locator<UserListUseCase>()),
        ),
        BlocProvider(
            create: (context) =>
                FetchedListCubit<Court>(locator<CourtListUseCase>()))
      ],
      child: const SearchView(),
    );
  }
}

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Search'),
          centerTitle: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
          child: Column(
            children: [
              BlocBuilder<SearchWithQueryCubit, SearchWithQueryState>(
                builder: (context, queryState) {
                  return TextField(
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                    ),
                    onChanged: (val) =>
                        context.read<SearchWithQueryCubit>().updateQuery(val),
                  );
                },
              ),
              const SizedSpacer.medium(),
              TabBar(
                onTap: (index) {
                  if (index == 1) {
                    context.read<FetchedListCubit<Court>>().fetchList(
                          ListUseCaseParams(
                            query: context
                                .read<SearchWithQueryCubit>()
                                .state
                                .query,
                            paginationRequest: PaginationRequest(),
                          ),
                        );
                  } else {
                    // context.read<FetchedListCubit<User>>().fetchList(
                    //       ListUseCaseParams(
                    //         query: context.read<SearchWithQueryCubit>().state.query,
                    //         paginationRequest: PaginationRequest(),
                    //       ),
                    //     );
                  }
                  // Add refresh method to fetched list cubit.
                },
                tabs: const [
                  Tab(
                    child: Text("Players"),
                  ),
                  Tab(
                    child: Text("Courts"),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    BlocListener<SearchWithQueryCubit, SearchWithQueryState>(
                      listenWhen: (previous, current) => previous != current,
                      listener: (context, queryState) =>
                          context.read<FetchedListCubit<User>>().fetchList(
                                ListUseCaseParams(
                                  query: queryState.query,
                                  paginationRequest: PaginationRequest(),
                                ),
                              ),
                      child: BlocBuilder<FetchedListCubit<User>,
                          FetchedListState<User>>(
                        builder: (context, state) {
                          // TODO: Should be notification listener for lazy loading on search
                          return ListView(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            children: [
                              for (final user in state.items)
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: ListTile(
                                    tileColor: AppColors.surface,
                                    onTap: () =>
                                        context.push('/profile/${user.id}'),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    title: Text("@${user.username}",
                                        style: context.textTheme.labelLarge),
                                    subtitle: Text(
                                      "${user.name} ${user.lastname}",
                                      style: context.textTheme.labelMedium,
                                    ),
                                    leading: Avatar(
                                      path: user.avatarPath,
                                    ),
                                    trailing: const Icon(Icons.chevron_right),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                    ),
                    BlocListener<SearchWithQueryCubit, SearchWithQueryState>(
                      listenWhen: (previous, current) => previous != current,
                      listener: (context, queryState) =>
                          context.read<FetchedListCubit<Court>>().fetchList(
                                ListUseCaseParams(
                                  query: queryState.query,
                                  paginationRequest: PaginationRequest(),
                                ),
                              ),
                      child: BlocBuilder<FetchedListCubit<Court>,
                          FetchedListState<Court>>(
                        builder: (context, state) {
                          // TODO: Should be notification listener for lazy loading on search
                          return ListView(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            children: [
                              for (final court in state.items)
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: InkWell(
                                      onTap: () =>
                                          context.push('/court/${court.id}'),
                                      //TODO: hero
                                      child: CourtCard(court: court)),
                                ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
