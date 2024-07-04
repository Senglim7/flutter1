import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 50.0,
        toolbarHeight: 80,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 126, 60, 60),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 120, top: 10),
        margin: const EdgeInsets.all(30),
        width: 500,
        height: 230,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://moewalls.com/wp-content/uploads/2023/06/miles-morales-and-gwen-stacy-spiderman-across-the-spider-verse-thumb.jpg")),
          boxShadow: const [
            BoxShadow(
              color: Colors.blueGrey,
              offset: Offset(0.0, 0.0),
            ),
          ],
        ),
        child: const Text("SpiderMan",
            style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 252, 3, 3),
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
