import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/homeScreen.dart';
import 'package:lottie/lottie.dart';

class Pre_HomeScreen extends StatefulWidget {
  const Pre_HomeScreen({super.key});

  @override
  State<Pre_HomeScreen> createState() => _Pre_HomeScreenState();
}

class _Pre_HomeScreenState extends State<Pre_HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 218, 218),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // SizedBox(
            //   height: 160,
            // ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Lottie.network(
                "https://lottie.host/84ade4b6-9e7c-4c9a-87cb-3ed0719f5af2/xDaDbKc962.json",
                width: 400,
              ),
            ),
            // Image.asset(
            //   "assets/images/pizza_deliveryboy.png",
            //   width: 250,
            // ),
            const Text(
              "Order your food now!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            //   child: Text(
            //     "Order food and get delivered within a few minutes to your door",
            //     style: TextStyle(
            //       fontSize: 18,
            //       color: Color.fromARGB(255, 33, 33, 33),
            //     ),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
            const SizedBox(
              height: 150,
            ),
            // InkWell(
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => HomeScreen()));
            //   },
            //   child: Container(
            //     alignment: Alignment.center,
            //     width: 350,
            //     height: 60,
            //     decoration: BoxDecoration(
            //         color: Color.fromARGB(255, 255, 21, 4),
            //         borderRadius: BorderRadius.circular(20)),
            //     child: const Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text(
            //           "Get Started",
            //           style: TextStyle(fontSize: 20, color: Colors.white),
            //         ),
            //         SizedBox(
            //           width: 8,
            //         ),
            //         Icon(
            //           Icons.arrow_forward_ios,
            //           color: Colors.white,
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
