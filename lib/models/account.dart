// account.dart

import 'package:passa_bola/models/user_type.dart';

class Account {
  final String? email;
  final String? username;
  final String? nickname;
  final String? password;
  final UserType? userType;

  const Account({
    this.email,
    this.username,
    this.nickname,
    this.password,
    this.userType,
  });

  Account copyWith({
    String? email,
    String? username,
    String? nickname,
    String? password,
    UserType? userType,
  }) {
    return Account(
      email: email ?? this.email,
      username: username ?? this.username,
      nickname: nickname ?? this.nickname,
      password: password ?? this.password,
      userType: userType ?? this.userType,
    );
  }
}
