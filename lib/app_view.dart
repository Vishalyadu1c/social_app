import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:social_app/core/theme/app_theme.dart';
import 'package:social_app/screens/auth/sign_in.dart';
import 'package:social_app/screens/home/home.dart';

import 'bloc/theme_cubit/theme_cubit.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ThemeCubit())],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, ThemeMode mode) {
          return MaterialApp(
            title: 'Social App',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: mode,
            debugShowCheckedModeBanner: false,
            home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
              builder: (context, state) {
                if (state.status == AuthenticationStatus.authenticated) {
                  return const Home();
                } else {
                  return const SignIn();
                }
              },
            ),
          );
        },
      ),
    );
  }
}
