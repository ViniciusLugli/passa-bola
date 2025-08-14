import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:passa_bola/components/background/bg_register.dart';
import 'package:passa_bola/components/utils/option.dart';
import 'package:passa_bola/components/utils/purple_button.dart';
import 'package:passa_bola/main.dart';
import 'package:passa_bola/models/user_type.dart';
import 'package:passa_bola/providers/register_data_provider.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? selectedOption;

  void handleContinue() {
    final registerData = Provider.of<RegisterDataProvider>(
      context,
      listen: false,
    );

    if (selectedOption == 'Organization') {
      registerData.setUserType(UserType.organization);
      context.go('');
    }

    if (selectedOption == 'Player') {
      registerData.setUserType(UserType.player);
      context.go('');
    }

    if (selectedOption == 'Spectator') {
      registerData.setUserType(UserType.spectator);
      context.go('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BgRegister(),

          Container(
            margin: EdgeInsets.only(top: 100, left: 45, right: 50),
            child: Text(
              'Bem-vindo ao Passa a Bola',
              style: TextStyle(
                fontSize: 40,
                fontFamily: AppFonts.mainFont,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 340, left: 50, right: 50),
            child: Text(
              'Quero me cadastrar como...',
              style: TextStyle(
                fontSize: 20,
                fontFamily: AppFonts.mainFont,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 175),
                child: Option(
                  title: 'Jogadora',
                  isSelected: selectedOption == 'Jogadora',
                  onTap: () {
                    setState(() {
                      selectedOption = 'Player';
                    });
                  },
                ),
              ),
              Option(
                title: 'Organização',
                isSelected: selectedOption == 'Organização',
                onTap: () {
                  setState(() {
                    selectedOption = 'Organization';
                  });
                },
              ),
              Option(
                title: 'Espectador',
                isSelected: selectedOption == 'Espectador',
                onTap: () {
                  setState(() {
                    selectedOption = 'Spectator';
                  });
                },
              ),
              SizedBox(height: 30),
              Purplebutton(text: 'CONTINUAR', onPressed: handleContinue),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: AppColors.purple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      'Já tem cadastro? Faça seu login!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontFamily: AppFonts.mainFont,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.go('/login');
                    },
                    child: SvgPicture.asset(
                      'assets/images/Seta.svg',
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
