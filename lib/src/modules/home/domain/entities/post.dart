import '../../data/dto/post_dto.dart';

class PostModel {
  final int id;
  final int userId;
  final String title;
  final String body;
  PostModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  PostModel copyWith({
    int? id,
    int? userId,
    String? title,
    String? body,
  }) {
    return PostModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  factory PostModel.fromDto(PostDTO postDTO) {
    return PostModel(
      id: postDTO.id,
      userId: postDTO.userId,
      title: postDTO.title,
      body: postDTO.body,
    );
  }

  @override
  String toString() {
    return 'PostModel(id: $id, userId: $userId, title: $title, body: $body)';
  }

  @override
  bool operator ==(covariant PostModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.userId == userId &&
        other.title == title &&
        other.body == body;
  }

  @override
  int get hashCode {
    return id.hashCode ^ userId.hashCode ^ title.hashCode ^ body.hashCode;
  }
}
