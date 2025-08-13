import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:passa_bola/main.dart';

class BgLogin extends StatelessWidget {
  const BgLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(width: double.infinity, height: double.infinity),

        Container(
          width: double.infinity,
          height: 660,
          decoration: BoxDecoration(
            color: AppColors.purple,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(200)),
          ),
        ),

        Positioned(
          top: 20,
          left: 120,
          child: SvgPicture.asset(
            'assets/images/DecoB (tatica 1).svg',
            height: 55,
            width: 40,
          ),
        ),

        Positioned(
          top: 30,
          right: 20,
          child: SvgPicture.asset(
            'assets/images/DecoB (tatica 2).svg',
            height: 35,
            width: 30,
          ),
        ),

        Positioned(
          top: 170,
          left: 110,
          child: SvgPicture.asset(
            'assets/images/TrianguloP-BV.svg',
            height: 20,
            width: 20,
          ),
        ),

        Positioned(
          top: 180,
          right: 70,
          child: SvgPicture.asset(
            'assets/images/TrianguloM-BV.svg',
            height: 50,
            width: 50,
          ),
        ),

        Positioned(
          bottom: 40,
          right: 15,
          child: SvgPicture.asset(
            'assets/images/Deco (linha).svg',
            height: 70,
            width: 40,
          ),
        ),
      ],
    );
  }
}
