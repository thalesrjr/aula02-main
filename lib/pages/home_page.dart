import 'package:aula02/pages/terms_page.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'login_page.dart';
import 'reset_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

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
            const UserAccountsDrawerHeader(
              accountName: Text("tj2930"),
              accountEmail: Text("thelesrjr5@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("topo"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text("termos e obrigaçôes"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TermsPage(title: "leis")));
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text("Alterar senha"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ResetPage(
                          title: "Alterar Senha",
                          isReset: false,
                        )));
              },
            )
          ],
        ),
      ),

      // bottomNavigationBar:  ,book)
      body: Center(
        child: ListView(children: const [
          SizedBox(
            height: 20,
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("S"),
              ),
              title: Text("Pessoa"),
              subtitle: Text("Descriçao"),
              trailing: Icon(Icons.arrow_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("S"),
              ),
              title: Text("Pessoa"),
              subtitle: Text("Descriçao"),
              trailing: Icon(Icons.arrow_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("S"),
              ),
              title: Text("Pessoa"),
              subtitle: Text("Descriçao"),
              trailing: Icon(Icons.arrow_right),
            ),
          )
        ]),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {},
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite_border),
            title: const Text("Likes"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: const Text("Search"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
