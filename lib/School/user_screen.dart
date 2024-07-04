import 'package:flutter/material.dart';
//import 'package:flutter1/School/user.model.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("UserPage"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          crossAxisCount: 3,
        ),
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}
// ListView.builder(
//           itemCount: userList.length,
//           itemBuilder: (context, index) {
//             return Card(
//               child: ListTile(
//                 title: Text(userList[index].name),
//                 subtitle: Text(userList[index].phonenumber.toString()),
//               ),
//             );
//           }),
