// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserDTO {
  final int id;
  final String name;
  final String accessToken;
  final String refreshToken;
  UserDTO({
    required this.id,
    required this.name,
    required this.accessToken,
    required this.refreshToken,
  });

  factory UserDTO.fromJson(Map<String, dynamic> map) {
    return UserDTO(
      id: map['id'] as int,
      name: map['name'] as String,
      accessToken: map['accessToken'] as String,
      refreshToken: map['refreshToken'] as String,
    );
  }

  @override
  String toString() => 'UserDTO(id: $id, name: $name)';



  @override
  bool operator ==(covariant UserDTO other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.accessToken == accessToken &&
      other.refreshToken == refreshToken;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      accessToken.hashCode ^
      refreshToken.hashCode;
  }
}
