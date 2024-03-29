// Package imports:
import 'package:code_demo/src/infrastructure/models/lazy_load_response.dart';
import 'package:code_demo/src/modules/home/domain/entities/post.dart';
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:code_demo/src/modules/auth/data/dto/token.dart';
import 'package:code_demo/src/modules/auth/domain/entities/user.dart';
import '../../../../infrastructure/utils/exceptions.dart';

import '../data_sources/posts_data_source.dart';
import '../dto/post_dto.dart';
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
