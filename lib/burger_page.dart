import 'package:flutter/material.dart';

class BurgerPage extends StatefulWidget {
  const BurgerPage({super.key});

  static const tag = 'burger_page';

  @override
  State<BurgerPage> createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
