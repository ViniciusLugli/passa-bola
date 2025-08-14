import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:passa_bola/components/background/bg_register.dart';
import 'package:passa_bola/components/utils/input.dart';
import 'package:passa_bola/components/utils/purple_button.dart';
import 'package:passa_bola/main.dart';

class RegisterEnterpriseStep1 extends StatefulWidget {
  const RegisterEnterpriseStep1({super.key});

  @override
  State<RegisterEnterpriseStep1> createState() => _RegisterEnterpriseStep1();
}

class _RegisterEnterpriseStep1 extends State<RegisterEnterpriseStep1> {
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
            margin: EdgeInsets.only(top: 270, left: 50, right: 50),
            child: Text(
              'Insira suas informações...',
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
                margin: EdgeInsets.only(top: 110),
                child: Input(placeholder: 'CNPJ'),
              ),
              Input(placeholder: 'Senha', obscureText: true),
              Input(placeholder: 'Confirme sua senha', obscureText: true),
              SizedBox(height: 50),
              Purplebutton(
                text: 'CONTINUAR',
                onPressed: () {
                  context.go('/register/enterprise/nextStep');
                },
              ),
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
