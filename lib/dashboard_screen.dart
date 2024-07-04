import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter1/models/dashboard_models.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  Text(
                    "Dashboard",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.notifications_none, size: 30),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 13, top: 20),
              child: Row(
                children: [
                  Text(
                    "List of Account",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children:
                  List.generate(DashboardModels.listaccount.length, (index) {
                var data = DashboardModels.listaccount[index];
                return Container(
                    margin: const EdgeInsets.all(10),
                    height: 100,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: data.backgroundGradient,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            data.title,
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("\$${data.price}",
                              style: const TextStyle(
                                  fontSize: 23, color: Colors.white))
                        ],
                      ),
                    ));
              }),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: 110,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey),
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 5)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$4800.00",
                    style:
                        TextStyle(color: Colors.orange.shade800, fontSize: 40),
                  ),
                  const Text(
                    "Total Balance",
                    style: TextStyle(
                        color: Color.fromARGB(255, 133, 132, 132),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Last Records Overview",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                const Row(
                    // children: [
                    //   Container(
                    //     height: 90,
                    //     width: 380,
                    //     color: Colors.black,
                    //   ),
                    // ],
                    ),
                Container(
                  width: 370,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 5)
                      ]),
                ),
                Positioned(
                  left: 10,
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.deepOrangeAccent[400]!,
                      Colors.orange[200]!,
                    ])),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(right: 100)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Groceries",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Credit Card",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 133, 132, 132),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "Today",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$250.00",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                const Row(
                    // children: [
                    //   Container(
                    //     height: 90,
                    //     width: 380,
                    //     color: Colors.black,
                    //   ),
                    // ],
                    ),
                Container(
                  width: 370,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 5)
                      ]),
                ),
                Positioned(
                  left: 10,
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.purple[400]!,
                      Colors.purple[200]!,
                    ])),
                    child: const Icon(
                      Icons.shopify_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.only(right: 100)),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Clothes",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Credit Card",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 133, 132, 132),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 65,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Padding(padding: EdgeInsets.all(5)),
                        const Text(
                          "03/04/2018",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$100.00",
                          style: TextStyle(
                              color: Colors.purple[500],
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                const Row(
                    // children: [
                    //   Container(
                    //     height: 90,
                    //     width: 380,
                    //     color: Colors.black,
                    //   ),
                    // ],
                    ),
                Container(
                  width: 370,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 5)
                      ]),
                ),
                Positioned(
                  left: 10,
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.green[300]!,
                      Colors.greenAccent[200]!,
                    ])),
                    child: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.only(right: 100)),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rental",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Cash",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 133, 132, 132),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 85,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Padding(padding: EdgeInsets.all(5)),
                        const Text(
                          "01/03/2018",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$300.00",
                          style: TextStyle(
                              color: Colors.green[300],
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
