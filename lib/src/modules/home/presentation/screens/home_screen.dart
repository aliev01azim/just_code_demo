
// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/consts/consts.dart';
import '../../../bottom_nav_bar/presentation/cubit/bottom_nav_bar_cubit.dart';
import 'posts_bloc/posts_bloc.dart';

@RoutePage()
class HomeModuleScreen extends StatelessWidget {
  const HomeModuleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  int _currentPage = 0;
  bool _hasMore = true;
  bool _isEndReached = false;
  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
    _fetchPosts();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      _isEndReached = true;
      _fetchPosts();
    }
  }

  void _fetchPosts() {
    if (_hasMore) {
      BlocProvider.of<PostsBloc>(context)
          .add(PostsEvent.fetchProducts(start: _currentPage));
    }
  }

  Future<void> _refresh() async {
    _currentPage = 0;
    _isEndReached = false;
    _hasMore = true;
    _fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home module'),
        actions: [
          IconButton(
              onPressed: () => context.read<BottomNavBarCubit>().logOut(),
              icon: const Icon(Icons.logout))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            _buildPostsList(),
            _buildLoadingIndicator(),
          ],
        ),
      ),
    );
  }

  Widget _buildPostsList() {
    return BlocConsumer<PostsBloc, PostsState>(
      listener: (context, state) {
        _currentPage += 10;
        _hasMore = state.hasMore;
        if (state.error != null) {
          Flushbar(title: state.error).show(context);
        }
      },
      builder: (context, state) {
        return state.loading
            ? const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : SliverList.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor: AppColors.focusedField.withOpacity(0.1),
                    title: Text(state.posts[index].title),
                    subtitle: Text(state.posts[index].body),
                  );
                },
                itemCount: state.posts.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
              );
      },
    );
  }

  Widget _buildLoadingIndicator() {
    return BlocSelector<PostsBloc, PostsState, bool>(
      selector: (state) {
        return state.lazyLoad;
      },
      builder: (context, loading) {
        return SliverToBoxAdapter(
          child: loading && _isEndReached
              ? const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : const SizedBox.shrink(),
        );
      },
    );
  }
}
