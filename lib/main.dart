import 'package:bmi_cal/constants/constants.dart';
import 'package:bmi_cal/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: mainColor,
        appBarTheme: AppBarTheme(
            centerTitle: true,
            titleTextStyle: TextStyle(color: accentHexColor),
            backgroundColor: mainColor,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: mainColor,
                systemNavigationBarColor: mainColor)),
        primaryColor: accentHexColor,
        // primaryTextTheme:
        // TextTheme(bodyLarge: TextStyle(color: accentHexColor)),
        // primarySwatch: buildMaterialColor(Color(0xFCC91C)),
        // colorScheme: ColorScheme.fromSwatch(backgroundColor: accentHexColor),
      ),
      home:  HomePage(),
    );
  }
}
