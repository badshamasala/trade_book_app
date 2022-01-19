import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/screens/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Trade Book',
              home: SplashScreen(),
              theme: ThemeData().copyWith(
                // change the focus border color of the TextField
                colorScheme: ThemeData()
                    .colorScheme
                    .copyWith(primary: appcolor),
                // change the focus border color when the errorText is set
                errorColor: Colors.purple,
              ),
            ));
  }
}
