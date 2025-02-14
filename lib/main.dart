import 'package:air_travel_app/loginPage/presentation/pages/auth_page.dart';
import 'package:air_travel_app/loginPage/presentation/pages/get_sms_box.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'loginPage/presentation/pages/get_info.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => AuthPage(),
      ),
      GoRoute(
        path: "/pincode",
        builder: (context, state) => GetSms(),
      ),
      GoRoute(
        path: "/info",
        builder: (context, state) => InfoPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
