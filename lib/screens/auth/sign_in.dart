import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/bloc/theme_cubit/theme_cubit.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
  
  bool isDarkMode = false;

  toggle(){
    if(isDarkMode== false){
      context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
      isDarkMode = true;
    }else {
      context.read<ThemeCubit>().updateTheme(ThemeMode.light);
      isDarkMode = false;
    }
  }


    return  Scaffold(
      appBar: AppBar(
        title: const Text("Theme"),
        actions: [
          IconButton(onPressed: ()=>toggle(), icon:  const Icon(Icons.dark_mode))
        ],
      ),
      body: const SafeArea(child: Center(
        child: Text('Sign Page'),
      )),
    );
  }
}