// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:code_demo/src/modules/home/data/dto/post_dto.dart';
import '../../../../infrastructure/models/lazy_load_response.dart';
import '../../../../infrastructure/utils/exceptions.dart';

abstract class PostsDataSource {
  Future<Either<PostsException, LazyLoadResponse<PostDTO>>> fetchPosts(
      {int start = 0, int limit = 10});
}
