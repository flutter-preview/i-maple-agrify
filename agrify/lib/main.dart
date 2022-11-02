import 'package:agrify/ui/screens/404.dart';
import 'package:agrify/ui/screens/home.dart';
import 'package:agrify/ui/utilities/font_style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:agrify/ui/screens/login.dart';
import 'package:agrify/ui/screens/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: textTheme,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/register': (context) => const MyRegister(),
        '/login': ((context) => const MyLogin()),
        '/home': (context) => const MyHome(),
        '/404': (context) => const NotFoundScreen()
      },
      onUnknownRoute: (settings) {
        Navigator.pushNamed(context, '/404');
      },
    );
  }
}
