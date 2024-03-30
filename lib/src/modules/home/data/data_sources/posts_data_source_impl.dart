// Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/models/lazy_load_response.dart';
import 'package:code_demo/src/modules/home/data/dto/post_dto.dart';
import '../../../../infrastructure/utils/exceptions.dart';
import 'posts_data_source.dart';

class PostsDataSourceImpl implements PostsDataSource {
  final Dio dio;
  PostsDataSourceImpl(this.dio);

  @override
  Future<Either<PostsException, LazyLoadResponse<PostDTO>>> fetchPosts(
      {int start = 0, int limit = 10}) async {
    try {
      final response = await dio.get(
        'posts',
        queryParameters: {'_start': start, '_limit': limit},
      );
      final List<PostDTO> posts = (response.data as List)
          .map((item) => PostDTO.fromJson(item as Map<String, dynamic>))
          .toList();
      final int currentPage = (start ~/ limit) + 1;
      final totalCount = response.headers.map['x-total-count'];
      final int totalPages =
          (totalCount != null) ? (int.parse(totalCount.first) ~/ limit) + 1 : 1;
      return Right(LazyLoadResponse<PostDTO>(
        statusCode: response.statusCode!,
        data: posts,
        currentPage: currentPage,
        totalPages: totalPages,
      ));
    } on DioException catch (error) {
      return Left(
          PostsException('${error.response?.data ?? "Failed to load posts"}'));
    } catch (error) {
      return Left(PostsException('Failed to load posts'));
    }
  }
}
