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

 
  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as int,
      name: map['name'] as String,
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

