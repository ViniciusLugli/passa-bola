import 'package:flutter/material.dart';
import 'package:passa_bola/models/organization.dart';
import 'package:passa_bola/models/player.dart';
import 'package:passa_bola/models/spectator.dart';
import 'package:passa_bola/models/user_type.dart';

class RegisterDataProvider extends ChangeNotifier {
  UserType? userType;
  Player? player;
  Organization? organization;
  Spectator? spectator;

  void setUserType(UserType type) {
    userType = type;
    notifyListeners();
  }

  // Novo método para atualizar os dados da Organização de forma incremental
  void updateOrganizationData({
    String? email,
    String? username,
    String? nickname,
    String? password,
    String? cnpj,
  }) {
    // Se o objeto ainda não existe, cria um novo
    if (organization == null) {
      organization = Organization(
        email: email,
        username: username,
        nickname: nickname,
        password: password,
        cnpj: cnpj,
        userType: userType, // O tipo já deve ter sido definido
      );
    } else {
      // Se já existe, cria uma cópia com os dados novos, mantendo os antigos
      organization = organization!.copyWith(
        email: email,
        username: username,
        nickname: nickname,
        password: password,
        cnpj: cnpj,
      );
    }
    notifyListeners();
  }

  // Exemplo para o Player
  void updatePlayerData({
    String? email,
    String? username,
    String? nickname,
    String? password,
    DateTime? birthDate,
  }) {
    if (player == null) {
      player = Player(
        email: email,
        username: username,
        nickname: nickname,
        password: password,
        birthDate: birthDate,
        userType: userType,
      );
    } else {
      player = player!.copyWith(
        email: email,
        username: username,
        nickname: nickname,
        password: password,
        birthDate: birthDate,
      );
    }
    notifyListeners();
  }
}
