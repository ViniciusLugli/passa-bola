import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:passa_bola/pages/login.dart';
import 'package:passa_bola/pages/register/register_enterprise_step1.dart';
import 'package:passa_bola/pages/register/register_enterprise_step2.dart';
import 'pages/register/register.dart';

class AppColors {
  static const Color purple = Color(0xff7F1BA2);
  static const Color darkPurple = Color(0xff491D7C);
  static const Color green = Color(0xff5FA53A);
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffFFFFFF);
  static const Color lightGray = Color(0xffE9E9E9);
  static const Color darkGray = Color(0xff898989);
}

// Definindo as fontes
class AppFonts {
  static const String mainFont = 'Manrope';
  static const String secondaryFont = 'Montserrat';
}

// Configurando as rotas
final GoRouter _router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: '/register/enterprise',
      builder: (context, state) => const RegisterEnterpriseStep1(),
      routes: [
        GoRoute(
          path: 'nextStep',
          builder: (context, state) => const RegisterEnterpriseStep2(),
        ),
      ],
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Passa a Bola',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
