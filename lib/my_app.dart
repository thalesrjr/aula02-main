import 'package:aula02/pages/home_page.dart';
import 'package:aula02/pages/login_page.dart';
import 'package:aula02/pages/register_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula02',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Home'), //Pagina Principal
      routes: <String, WidgetBuilder>{
        '/login': (context) => const LoginPage(title: "Login"),
        '/register': (context) => const RegisterPage(title: "Registre-se")
      },
    );
  }
}
