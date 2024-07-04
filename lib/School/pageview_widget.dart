import 'package:flutter/material.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PageView"),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            PageView(
              //  scrollDirection: Axis.vertical,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                  print(value);
                });
              },
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.red,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.black,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.yellow,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i <= 2; i++)
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: currentIndex == i ? Colors.blue : Colors.white,
                        shape: BoxShape.circle),
                  ),
              ],
            )
          ],
        ));
  }
}
