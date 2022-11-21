import 'package:aula02/pages/terms_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: const [Icon(Icons.notifications)],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("tj2930"),
              accountEmail: Text("thelesrjr5@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("topo"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("termos e obrigaçôes"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TermsPage(title: "leis")));
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Bem-Vindo usuário",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginPage(title: "Login"),
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Clique aqui para sair..."),
                    Icon(Icons.logout, color: Colors.blue),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
