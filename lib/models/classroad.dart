import 'package:flutter/material.dart';

class MyStackContainer extends StatelessWidget {
  const MyStackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
          Positioned(
            top: 40,
            left: 40,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
