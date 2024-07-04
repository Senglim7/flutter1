import 'package:flutter/material.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({super.key});

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text("Tabbar"),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.notifications),
              text: "Notifications",
            ),
            Tab(
              icon: Icon(Icons.menu),
              text: "Menu",
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/p.jpg"))),
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                    title: const Text("My Products"),
                    subtitle: const Text("10\$"),
                    trailing: const Icon(Icons.delete),
                    //  iconColor: Colors.blue,
                  ),
                );
              },
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.pink,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
