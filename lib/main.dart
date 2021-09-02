import 'package:bwa_cozy/cubit/page_cubit.dart';
import 'package:bwa_cozy/pages/main_page.dart';
import 'package:bwa_cozy/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(CozyApp());

class CozyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        routes: {
          '/': (context) => SplashPage(),
          '/main': (context) => MainPage(),
        },
      ),
    );
  }
}
