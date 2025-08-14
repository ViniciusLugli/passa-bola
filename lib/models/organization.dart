import 'package:passa_bola/models/account.dart';

class Organization extends Account {
  final String cnpj;

  Organization({
    required super.email,
    required super.username,
    required super.nickname,
    required super.password,
    required super.userType,
    required this.cnpj,
  });
}
