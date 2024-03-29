// Package imports:
import 'package:code_demo/src/modules/home/domain/entities/post.dart';
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../infrastructure/models/lazy_load_response.dart';
import '../../../../infrastructure/utils/exceptions.dart';

abstract class PostsRepository {
  Future<Either<PostsException, LazyLoadResponse<PostModel>>> fetchPosts(
      {int start = 0, int limit = 10});
}
