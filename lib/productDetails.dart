import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    void addnumber() {
      setState(() {
        number++;
      });
    }

    void subnumber() {
      if (number == 0) {
        return;
      } else {
        setState(() {
          number--;
        });
      }
    }

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 1000,
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 400,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 225, 231, 236),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          topRight: Radius.circular(100),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          Container(
                            width: 140,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 254, 54, 40),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  width: 2,
                                ),
                                IconButton(
                                    onPressed: subnumber,
                                    icon: const Icon(Icons.remove,
                                        color: Colors.white)),
                                Text(
                                  "$number",
                                  style: const TextStyle(
                                      fontSize: 24, color: Colors.white),
                                ),
                                IconButton(
                                    onPressed: addnumber,
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                                const SizedBox(
                                  width: 2,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Beef Burder",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$7.59",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 35, vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 30,
                                      color: Color.fromARGB(255, 217, 195, 2),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("4.5",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w800))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.timer,
                                      color: Color.fromARGB(255, 227, 20, 20),
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "5-10 Min",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: 350,
                            alignment: Alignment.center,
                            height: 60,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 252, 48, 33),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text(
                              "Add to Cart",
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Positioned(
              top: _mediaQuery.size.height * 0.25,
              left: _mediaQuery.size.width * 0.2,
              height: 200,
              child: Image.asset(
                "assets/images/f_burger.png",
                // width: 300,
                // height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
