// Project imports:
import '../../data/dto/user_dto.dart';

class UserModel {
  final int id;
  final String name;
  UserModel({
    required this.id,
    required this.name,
  });

  UserModel copyWith({
    int? id,
    String? name,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
  factory UserModel.fromDTO(UserDTO userDTO) {
    return UserModel(
      id: userDTO.id,
      name: userDTO.name,
    );
  }

  @override
  String toString() => 'UserModel(id: $id, name: $name)';

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}

