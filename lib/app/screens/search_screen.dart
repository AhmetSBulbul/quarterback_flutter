import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/app/widgets/modules/fetched_list/cubit/fetched_list_cubit.dart';
import 'package:quarterback_flutter/app/widgets/modules/search_with_query/cubit/search_with_query_cubit.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/core/usecase/list_usecase.dart';
import 'package:quarterback_flutter/features/user/data/user_repository.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/userpb.pbgrpc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SearchWithQueryCubit(),
          ),
          BlocProvider(
            create: (context) => FetchedListCubit(locator<UserListUseCase>()),
          ),
        ],
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
                        prefixIcon: Icon(Icons.search),
                      ),
                      onChanged: (val) =>
                          context.read<SearchWithQueryCubit>().updateQuery(val),
                    );
                  },
                ),
                const SizedSpacer.medium(),
                TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: AppColors.grey,
                  onTap: (index) {
                    print(index);
                  },
                  tabs: const [
                    Tab(
                      child: Text("Players"),
                    ),
                    Tab(
                      child: Text("Teams"),
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
                              children: [
                                for (final user in state.items)
                                  ListTile(
                                    title: Text(user.name),
                                  ),
                              ],
                            );
                          },
                        ),
                      ),
                      ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) => const ListTile(
                          title: Text('Team //'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
