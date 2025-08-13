import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:passa_bola/main.dart';

class BgRegister extends StatelessWidget {
  const BgRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: AppColors.white,
          height: double.infinity,
          width: double.infinity,
        ),

        Positioned(
          top: 15,
          left: 15,
          child: SvgPicture.asset(
            'assets/images/Deco (linha).svg',
            height: 70,
            width: 40,
          ),
        ),

        Positioned(
          top: 15,
          left: 135,
          child: SvgPicture.asset(
            'assets/images/DecoR (tatica 1).svg',
            height: 60,
            width: 30,
          ),
        ),

        Positioned(
          top: 18,
          right: 25,
          child: SvgPicture.asset(
            'assets/images/DecoR (tatica 2).svg',
            height: 30,
            width: 30,
          ),
        ),

        Positioned(
          top: 90,
          right: 140,
          child: SvgPicture.asset(
            'assets/images/TrianguloP-RV.svg',
            height: 15,
            width: 15,
          ),
        ),

        Positioned(
          top: 180,
          right: 85,
          child: SvgPicture.asset(
            'assets/images/TrianguloM-RV.svg',
            height: 45,
            width: 45,
          ),
        ),
      ],
    );
  }
}
