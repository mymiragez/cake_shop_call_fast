// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ShowShopDetailUI extends StatefulWidget {
  const ShowShopDetailUI({super.key});

  @override
  State<ShowShopDetailUI> createState() => _ShowShopDetailUIState();
}

class _ShowShopDetailUIState extends State<ShowShopDetailUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'CAKE SHOP CALL FAST (DETAIL)',
        ),
        centerTitle: true,
      ),
    );
  }
}
