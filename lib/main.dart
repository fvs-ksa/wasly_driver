import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:wasly_driver/cubit/auth_cubit/cubit.dart';
import 'package:wasly_driver/pallete.dart';
import 'package:wasly_driver/ui/auth_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<AuthCubit>(create: (context)=>AuthCubit(),),
    ],
    child: Sizer(
        builder: (context,orientation,deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'سائق وصلي',
            theme: ThemeData(
              primarySwatch: Palette.mainColor,
            ),
            home:LoginScreen(),
          );
        }
    ),
    );

  }
}

