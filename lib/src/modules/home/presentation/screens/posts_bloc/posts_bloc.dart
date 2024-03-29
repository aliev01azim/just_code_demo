import 'package:code_demo/src/modules/home/domain/usecases/token_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/post.dart';

part 'posts_state.dart';
part 'posts_event.dart';
part 'posts_bloc.freezed.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostsUseCase postsUseCase;
  PostsBloc({required this.postsUseCase})
      : super(const MainState(loading: false, posts: [])) {
    on<FetchPosts>((event, emit) async {
      final isLazyLoad = event.start > 0;
      emit(state.copyWith(loading: !isLazyLoad, lazyLoad: isLazyLoad));
      final result = await postsUseCase.fetchPosts(start: event.start);
      result.fold(
        (l) => emit(state.copyWith(
          error: l.error,
          loading: false,
          lazyLoad: false,
        )),
        (r) {
          emit(state.copyWith(
            posts: event.start == 0 ? r.data : [...state.posts, ...r.data],
            error: null,
            hasMore: r.hasMore,
            loading: false,
            lazyLoad: false,
          ));
        },
      );
    });
  }
}
