// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ShowShopUI extends StatefulWidget {
  const ShowShopUI({super.key});

  @override
  State<ShowShopUI> createState() => _ShowShopUIState();
}

class _ShowShopUIState extends State<ShowShopUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'CAKE SHOP CALL FAST',
        ),
        centerTitle: true,
      ),
    );
  }
}
