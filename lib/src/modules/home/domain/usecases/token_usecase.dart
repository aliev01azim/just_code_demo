// Project imports:
import 'package:dartz/dartz.dart';

import '../../../../infrastructure/models/lazy_load_response.dart';
import '../../../../infrastructure/utils/exceptions.dart';
import '../../data/repositories/posts_repository.dart';
import '../entities/post.dart';

class PostsUseCase {
  final PostsRepository _repository;

  PostsUseCase(this._repository);
  Future<Either<PostsException, LazyLoadResponse<PostModel>>> fetchPosts(
      {int start = 0, int limit = 10}) {
    return _repository.fetchPosts(start: start, limit: limit);
  }
}
