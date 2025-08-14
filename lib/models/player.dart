import 'package:passa_bola/models/account.dart';

class Player extends Account {
  Player({
    required super.email,
    required super.username,
    required super.nickname,
    required super.password,
    required super.userType,
  });
}
