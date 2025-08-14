import 'package:passa_bola/models/account.dart';
import 'package:passa_bola/models/user_type.dart';

class Organization extends Account {
  final String? cnpj;

  const Organization({
    super.email,
    super.username,
    super.nickname,
    super.password,
    super.userType,
    this.cnpj,
  });

  @override
  Organization copyWith({
    String? email,
    String? username,
    String? nickname,
    String? password,
    UserType? userType,
    String? cnpj,
  }) {
    return Organization(
      email: email ?? this.email,
      username: username ?? this.username,
      nickname: nickname ?? this.nickname,
      password: password ?? this.password,
      userType: userType ?? this.userType,
      cnpj: cnpj ?? this.cnpj,
    );
  }
}
