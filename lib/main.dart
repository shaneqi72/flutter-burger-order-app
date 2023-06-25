import 'package:flutter/material.dart';

import 'header.dart';
import 'categories.dart';
import 'hambergers_list.dart';
import 'burger_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.teal,
          cardColor: Colors.white,
          appBarTheme: const AppBarTheme(color: Colors.teal, centerTitle: true),
          bottomAppBarTheme: const BottomAppBarTheme(color: Colors.teal),
        ),
        home: const Hamberger(),
        routes: {BurgerPage.tag: (context) => const BurgerPage()},
        debugShowCheckedModeBanner: false);
  }
}

class Hamberger extends StatefulWidget {
  const Hamberger({super.key});

  @override
  State<Hamberger> createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
            pinned: true,
            title: const Text("Deliver Me"),
            leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  debugPrint("Menu");
                }),
            actions: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              )
            ]),
        const Header(),
        Categories(),
        HambergersList(),
        HambergersList(),
        // SliverList(
        //   delegate: SliverChildListDelegate([
        //     const Text(
        //       'Hamberger',
        //       style: TextStyle(fontSize: 300),
        //     )
        //   ]),
        // )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
