import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:passa_bola/models/organization.dart';
import 'package:passa_bola/providers/register_data_provider.dart';
import 'package:provider/provider.dart';
import 'package:passa_bola/pages/login.dart';
import 'package:passa_bola/pages/register/register_organization_step1.dart';
import 'package:passa_bola/pages/register/register_organization_step2.dart';
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
      path: '/register/organization',
      builder: (context, state) => const RegisterOrganizationStep1(),
      routes: [
        GoRoute(
          path: 'nextStep',
          builder: (context, state) => const RegisterOrganizationStep2(),
        ),
      ],
    ),
  ],
);

void main() {
  print(Organization.validateCnpj('11.222.333/0001-81'));
  runApp(
    ChangeNotifierProvider(
      create: (context) => RegisterDataProvider(),
      child: const MyApp(),
    ),
  );
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
