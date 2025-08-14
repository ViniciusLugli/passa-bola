import 'package:passa_bola/models/user_type.dart';

class Account {
  final String email;
  final String username;
  final String nickname;
  final String password;
  final UserType userType;

  Account({
    required this.email,
    required this.username,
    required this.nickname,
    required this.password,
    required this.userType,
  });
}
