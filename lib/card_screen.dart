// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter1/models/card_models.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 20, 34),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "Transaksi",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(CardModel.listCard.length, (index) {
                  var data = CardModel.listCard[index];
                  return Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(15),
                    height: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.3))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white.withOpacity(0.1),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(data.image))),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.title,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text(
                              data.date,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white.withOpacity(0.4)),
                            ),
                          ],
                        ),
                        Text(
                          "+ \$ ${data.price}",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
