import 'package:aula02/pages/home_page.dart';
import 'package:aula02/pages/register_page.dart';
import 'package:aula02/pages/reset_page.dart';
import 'package:aula02/utils/widget/eleveted_button_custom.dart';
import 'package:aula02/utils/widget/text_form_field_custom.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;
  double altura = 300;
  double largura = 200;
  bool click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.title,
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Text("Faça login para continuar"),
              //Image.network(src)
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  setState(() {
                    click = !click;
                    if (click) {
                      altura = 400;
                      largura = 300;
                    } else {
                      altura = 300;
                      largura = 200;
                    }
                  });
                },
                child: SizedBox(
                  height: altura,
                  width: largura,
                  child: Image.network(
                      "https://www.cnnbrasil.com.br/esporte/neymar-acusa-nike-de-mentira-e-diz-que-nao-pode-se-defender/",
                      fit: BoxFit.fill),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              TextFormFieldCustom(
                description: 'E-mail',
                prefixIcon: const Icon(Icons.person, color: Colors.blue),
              ),
              const SizedBox(height: 25),
              TextFormFieldCustom(
                obscureText: obscureText,
                description: 'senha',
                prefixIcon: const Icon(Icons.key, color: Colors.blue),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => ResetPage(
                                title: "RESETAR",
                                isReset: true,
                              ))));
                    },
                    child: const Text(
                      "Esqueceu a senha?",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              ElevetedButtonCustom(
                  description: "Login",
                  function: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const HomePage(title: "HOME"))));
                  }),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const RegisterPage(title: "Registre-se"),
                    ),
                  );
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 36),
                    children: <TextSpan>[
                      TextSpan(text: 'Ainda não tem conta? '),
                      TextSpan(
                        text: 'Clique aqui\n para criar conta',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ],
                  ),
                  textScaleFactor: 0.5,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
} //125
