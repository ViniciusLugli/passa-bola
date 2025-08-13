import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:passa_bola/components/background/bg_login.dart';
import 'package:passa_bola/components/utils/input.dart';
import 'package:passa_bola/components/utils/purple_button.dart';
import 'package:passa_bola/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BgLogin(),
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 100),
            child: Text(
              'Login',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 40,
                fontFamily: AppFonts.mainFont,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 280),
            child: Column(
              children: [
                Input(placeholder: 'Email'),
                Input(placeholder: 'Senha'),
                SizedBox(height: 30),
                Purplebutton(text: 'CONTINUAR', onPressed: () {}),
              ],
            ),
          ),
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Ainda não tem login? Faça seu cadastro!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 18,
                      fontFamily: AppFonts.mainFont,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context.go('/register');
                  },
                  child: SvgPicture.asset(
                    'assets/images/Seta-Preta.svg',
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
