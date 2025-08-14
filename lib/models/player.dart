import 'package:passa_bola/models/account.dart';
import 'package:passa_bola/models/user_type.dart';

class Player extends Account {
  final DateTime? birthDate;

  const Player({
    super.email,
    super.username,
    super.nickname,
    super.password,
    super.userType,
    this.birthDate,
  });

  @override
  Player copyWith({
    String? email,
    String? username,
    String? nickname,
    String? password,
    UserType? userType,
    DateTime? birthDate,
  }) {
    return Player(
      email: email ?? this.email,
      username: username ?? this.username,
      nickname: nickname ?? this.nickname,
      password: password ?? this.password,
      userType: userType ?? this.userType,
      birthDate: birthDate ?? this.birthDate,
    );
  }
}
