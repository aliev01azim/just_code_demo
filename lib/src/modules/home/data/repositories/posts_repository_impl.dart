// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../infrastructure/models/lazy_load_response.dart';
import '../../../../infrastructure/utils/exceptions.dart';
import '../../domain/entities/post.dart';
import '../data_sources/posts_data_source.dart';
import 'posts_repository.dart';

class PostsRepositoryImpl implements PostsRepository {
  final PostsDataSource _remoteDataSource;

  PostsRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<PostsException, LazyLoadResponse<PostModel>>> fetchPosts(
      {int start = 0, int limit = 10}) async {
    final result =
        await _remoteDataSource.fetchPosts(start: start, limit: limit);
    return result.fold((exception) => Left(exception),
        (response) => Right(response.map(PostModel.fromDto)));
  }
}
