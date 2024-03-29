part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.main(
      {@Default(false) bool lazyLoad,
      required bool loading,
      required List<PostModel> posts,
      @Default(true) bool hasMore,
      String? error}) = MainState;
}
