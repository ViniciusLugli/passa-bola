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

    if (stringCnpj.length != 14 || stringCnpj.toSet().length == 1) {
      return false;
    }

    List<int> weight = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];
    List<String> copyCnpj = stringCnpj.sublist(0, 12);

    int sumFirstDigit = 0;
    for (int i = 0; i < weight.length; i++) {
      sumFirstDigit += (copyCnpj[i].codeUnitAt(0) - 48) * weight[i];
    }

    int firstDigit = sumFirstDigit % 11 < 2 ? 0 : 11 - (sumFirstDigit % 11);
    if (firstDigit.toString() != stringCnpj[12]) {
      return false;
    }

    copyCnpj.add(firstDigit.toString());
    weight.insert(0, 6);

    int sumSecondDigit = 0;
    for (int i = 0; i < weight.length; i++) {
      sumSecondDigit += (copyCnpj[i].codeUnitAt(0) - 48) * weight[i];
    }

    int secondDigit = sumSecondDigit % 11 < 2 ? 0 : 11 - (sumSecondDigit % 11);
    copyCnpj.add(secondDigit.toString());

    if (!listEquals(copyCnpj, stringCnpj)) {
      return false;
    }

    return true;
  }
}
