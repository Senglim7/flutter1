import 'package:flutter/material.dart';

class BankNotifications extends StatefulWidget {
  const BankNotifications({super.key});

  @override
  State<BankNotifications> createState() => _BankNotificationsState();
}

class _BankNotificationsState extends State<BankNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 216, 216),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 219, 216, 216),
        toolbarHeight: 75,
        title: const Text(
          "Notifications",
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.notifications),
          SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: const Drawer(
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              ),
          Container(
            // padding: const EdgeInsets.only(left: 110),
            width: 390,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/p.jpg"))),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 0,
                        ),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                                children: [
                              TextSpan(text: "You received a payment of "),
                              TextSpan(
                                  text: "\$120.00 ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green)),
                              TextSpan(text: "from "),
                              // WidgetSpan(
                              //     child: SizedBox(
                              //   height: 30,
                              // )),
                              TextSpan(
                                  text: "Jhan Smith",
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ])),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        const Text(
                          "08:39 AM",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 105, 105, 105)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              ),
          Container(
            // padding: const EdgeInsets.only(left: 110),
            width: 390,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/p.jpg"))),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 0,
                        ),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                                children: [
                              TextSpan(
                                  text: "James Smith ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                text: "requested a payment of ",
                              ),
                              WidgetSpan(
                                  child: SizedBox(
                                height: 30,
                              )),
                              TextSpan(
                                  text: "\$450.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green))
                            ])),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        const Text(
                          "07:00 AM",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 105, 105, 105)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 0),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(255, 252, 103, 153),
                            Colors.orangeAccent
                          ]),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Pay",
                              style:
                                  TextStyle(fontSize: 23, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              ),
          Container(
            // padding: const EdgeInsets.only(left: 110),
            width: 390,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.fastcompany.net/image/upload/w_1200,c_limit,q_auto:best/wp-cms/uploads/2023/04/i-3-90885664-mastercard-logo.jpg"))),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 0,
                        ),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                                children: [
                              TextSpan(
                                  text:
                                      "Your new payment method has been added succesfully"),
                              // TextSpan(
                              //     text: "\$120.00 ",
                              //     style:
                              //         TextStyle(fontWeight: FontWeight.bold)),
                              // TextSpan(text: "from "),
                              // WidgetSpan(
                              //     child: SizedBox(
                              //   height: 30,
                              // )),
                              // TextSpan(
                              //     text: "Jhan Smith",
                              //     style: TextStyle(fontWeight: FontWeight.bold))
                            ])),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        const Text(
                          "03:39 AM",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 105, 105, 105)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              ),
          Container(
            // padding: const EdgeInsets.only(left: 110),
            width: 390,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/p.jpg"))),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 0,
                        ),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                                children: [
                              TextSpan(text: "You received a payment of "),
                              TextSpan(
                                  text: "\$400.00 ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green)),
                              TextSpan(text: "for "),
                              // WidgetSpan(
                              //     child: SizedBox(
                              //   height: 30,
                              // )),
                              TextSpan(
                                  text: "Willian Henry",
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ])),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        const Text(
                          "08:39 AM",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 105, 105, 105)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              ),
          Container(
            // padding: const EdgeInsets.only(left: 110),
            width: 390,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/p.jpg"))),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 0,
                        ),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                                children: [
                              TextSpan(
                                  text: "James Smith ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                text: "requested a payment of ",
                              ),
                              WidgetSpan(
                                  child: SizedBox(
                                height: 30,
                              )),
                              TextSpan(
                                  text: "\$360.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green))
                            ])),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        const Text(
                          "7 March 2018",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 105, 105, 105)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 0),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Colors.lightBlueAccent,
                            Colors.lightGreenAccent
                          ]),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Paid",
                              style:
                                  TextStyle(fontSize: 23, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
