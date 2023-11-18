import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 200,
          color: Colors.green,
        ),
        Container(
          height: 200,
          color: Colors.blue,
        ),
        Container(
          height: 200,
          color: Colors.black,
        ),
        Container(
          height: 200,
          color: Colors.yellow,
        ),
        Container(
          height: 200,
          color: Colors.red,
        ),
      ],
    );
  }
}