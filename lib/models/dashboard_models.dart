import 'package:flutter/material.dart';

class DashboardModels {
  final String title;
  final double price;
  final Gradient backgroundGradient;

  DashboardModels(
      {required this.title,
      required this.price,
      required this.backgroundGradient});

  static List<DashboardModels> listaccount = [
    DashboardModels(
        title: "Bank Account",
        price: 2500.00,
        backgroundGradient: const LinearGradient(colors: [
          Color.fromARGB(255, 171, 43, 194),
          Color.fromARGB(255, 237, 166, 250)
        ])),
    DashboardModels(
        title: "Credit Card",
        price: 1500.00,
        backgroundGradient: const LinearGradient(
            colors: [Colors.deepOrange, Color.fromARGB(255, 250, 171, 69)])),
    DashboardModels(
        title: "Cash",
        price: 800.00,
        backgroundGradient: const LinearGradient(
            colors: [Colors.lightGreen, Colors.greenAccent])),
  ];
}
