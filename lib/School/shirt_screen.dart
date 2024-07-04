import 'package:flutter/material.dart';

class ShirtScreen extends StatefulWidget {
  const ShirtScreen({super.key});

  @override
  State<ShirtScreen> createState() => _ShirtScreen();
}

class _ShirtScreen extends State<ShirtScreen> {
  List<String> listCategories = ['Shirts', 'Pants', 'Hoodies', 'Shoes'];

  List<String> listImages = [
    "assets/images/polo.png.png",
    "assets/images/Gucci.png.png",
    "assets/images/versace.png.png",
    "assets/images/burberry.png.png",
    "assets/images/Lv.png",
    "assets/images/adidas.png.png"
  ];

  List<String> listTitle = [
    'Polo Shirt',
    'Gucci Shirt',
    'Versace Shirt',
    'Burberry Shirt',
    'LV Sweater',
    'Adidas Shirt'
  ];

  int currentIndex = 0;
  int? SetselectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shop Collections",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 72, 15, 83)),
                  ),
                  Icon(Icons.menu,
                      size: 30, color: Color.fromARGB(255, 72, 15, 83))
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(listCategories.length, (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: currentIndex == index
                      ? Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 3),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(3, 5),
                                    color: Colors.black.withOpacity(0.4),
                                    blurRadius: 10)
                              ]),
                          child: Text(
                            listCategories[index],
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      : Text(
                          listCategories[index],
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                );
              }),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  itemCount: listImages.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.8),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          SetselectedIndex = index;
                          // if (index == 0) {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (context) {
                          //           return //NameClass();
                          //         },
                          //       ));
                          // }
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 30, bottom: 10),
                        decoration: BoxDecoration(
                            color: SetselectedIndex == index
                                ? Colors.purple
                                : SetselectedIndex == null
                                    ? Colors.white
                                    : Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Container(
                              height: 160,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  // color: Colors.red,
                                  image: DecorationImage(
                                      image: AssetImage(listImages[index]))),
                            ),
                            // const SizedBox(
                            //   height: 0,
                            // ),
                            Text(
                              listTitle[index],
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
