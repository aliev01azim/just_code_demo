// ignore_for_file: public_member_api_docs, sort_constructors_first
class PostDTO {
  final int id;
  final int userId;
  final String title;
  final String body;
  PostDTO({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory PostDTO.fromJson(Map<String, dynamic> map) {
    return PostDTO(
      id: map['id'] as int,
      userId: map['userId'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }



  @override
  bool operator ==(covariant PostDTO other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.userId == userId &&
      other.title == title &&
      other.body == body;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      userId.hashCode ^
      title.hashCode ^
      body.hashCode;
  }

  @override
  String toString() {
    return 'PostDTO(id: $id, userId: $userId, title: $title, body: $body)';
  }
}
