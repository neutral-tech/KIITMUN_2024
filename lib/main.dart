import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:hive_flutter/adapters.dart";
import "package:kiitmun_2024/controllers/LoginController.dart";
import "package:kiitmun_2024/views/AboutPage.dart";
import "package:kiitmun_2024/views/Committees.dart";
import "package:kiitmun_2024/views/Credits.dart";
import "package:kiitmun_2024/views/Downloads.dart";
import "package:kiitmun_2024/views/Gallery.dart";
import "package:kiitmun_2024/views/HomePage.dart";
import "package:kiitmun_2024/views/SplashScreen.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await Hive.initFlutter();
  await Hive.openBox('sessionBox');
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash',
    routes: {
      '/login': (context) => const Logincontroller(),
      '/': (context) => const HomePage(),
      '/committees': (context) => Committees(),
      '/about': (context) => const AboutPage(),
      '/downloads': (context) => const Downloads(),
      '/splash': (context) => SplashScreen(),
      '/credits': (context) => const Credits(),
      '/gallery': (context) => const Gallery(),
    },
  ));
}