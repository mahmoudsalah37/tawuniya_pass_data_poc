import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'entities/sign_up_data.dart';
import 'screen/contact_info_screen.dart';
import 'screen/summary_screen.dart';
import 'screen/user_info_screen.dart';

class SignUpApp extends StatelessWidget {
  const SignUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
        scaffoldBackgroundColor: Colors.white,
      ),
      routerConfig: _router,
    );
  }

  GoRouter get _router => GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => UserInfoScreen(),
          ),
          GoRoute(
            path: '/contact',
            builder: (context, state) {
              final data = state.extra as SignUpData;
              return ContactInfoScreen(signUpData: data);
            },
          ),
          GoRoute(
            path: '/summary',
            builder: (context, state) {
              final data = state.extra as SignUpData;
              return SummaryScreen(signUpData: data);
            },
          ),
        ],
      );
}
