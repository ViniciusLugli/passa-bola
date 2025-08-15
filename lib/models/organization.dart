import 'package:flutter/foundation.dart';
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

  static bool validateCnpj(String cnpj) {
    RegExp unwantedCaracters = RegExp(r'[./-]');

    List<String> stringCnpj = cnpj.replaceAll(unwantedCaracters, '').split('');
    List<int> intCnpj = stringCnpj.map((e) => int.parse(e)).toList();

    if (stringCnpj.length != 14) {
      return false;
    }

    List<int> weight = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];
    List<int> copyCnpj = intCnpj.sublist(0, 12);

    int sumFirstDigit = 0;
    for (int i = 0; i < weight.length; i++) {
      sumFirstDigit += copyCnpj[i] * weight[i];
    }

    int firstDigit = sumFirstDigit % 11 < 2 ? 0 : 11 - (sumFirstDigit % 11);

    if (firstDigit != intCnpj[12]) {
      return false;
    }

    copyCnpj.add(firstDigit);
    weight.insert(0, 6);

    int sumSecondDigit = 0;

    for (int i = 0; i < weight.length; i++) {
      sumSecondDigit += copyCnpj[i] * weight[i];
    }

    int secondDigit = sumSecondDigit % 11 < 2 ? 0 : 11 - (sumSecondDigit % 11);
    copyCnpj.add(secondDigit);

    if (!listEquals(copyCnpj, intCnpj)) {
      return false;
    }

    return true;
  }
}
