import 'package:aula02/pages/login_page.dart';
import 'package:aula02/pages/register_page.dart';
import 'package:aula02/utils/widget/eleveted_button_custom.dart';
import 'package:aula02/utils/widget/text_form_field_custom.dart';
import 'package:flutter/material.dart';

class ResetPage extends StatefulWidget {
  ResetPage({super.key, required this.title, required this.isReset});

  final String title;
  bool isReset = true;

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
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
              const SizedBox(height: 50),
              const Icon(Icons.key, size: 100.50, color: Colors.blue),
              const SizedBox(height: 50),
              const SizedBox(
                height: 25,
              ),
              TextFormFieldCustom(
                obscureText: obscureText,
                description: 'Senha',
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
              const SizedBox(height: 25),
              widget.isReset
                  ? TextFormFieldCustom(
                      obscureText: obscureText,
                      description: 'Repetir a senha',
                      prefixIcon: const Icon(Icons.key, color: Colors.blue),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: Icon(
                            obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.blue),
                      ),
                    )
                  : SizedBox(),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(height: 25),
              ElevetedButtonCustom(
                  description: "RESETAR",
                  function: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) =>
                            const LoginPage(title: "HOME"))));
                  }),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
} //125
