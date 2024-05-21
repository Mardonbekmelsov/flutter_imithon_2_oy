import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_imithon_2_oy/pages/sign_up.dart';

//onboarding1
class OnBoardingWidget1 extends StatelessWidget {
  final Function() onTap;
  const OnBoardingWidget1({super.key, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: Color(0xff63771E),
      ),
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(1, -1),
            child: Container(
              width: double.infinity,
              height: 300,
              child: Image.asset(
                "images/entry1_pic.png",
                height: 150,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(1, 0),
            child: Container(
              height: 232,
              width: 328,
              padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 30),
              decoration: BoxDecoration(
                color: const Color(
                  0xff89A335,
                ),
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: const Column(
                children: [
                  Expanded(
                    child: Text(
                      "Choose Your Product",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Text(
                      "There are more than 100 furniture products that will make your home come alive",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 140,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
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

//onboarding2
class OnBoardingWidget2 extends StatelessWidget {
  final Function() onTap;
  const OnBoardingWidget2({super.key, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: Color(0xff63771E),
      ),
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(1, 0),
            child: Container(
              height: 232,
              width: 328,
              padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 30),
              decoration: BoxDecoration(
                color: const Color(
                  0xff89A335,
                ),
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: const Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Just 2 Clics and you can buy all the product with home delivery",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.4, -0.9),
            child: Container(
              width: 244,
              height: 240,
              child: Image.asset(
                "images/entry2_pic.png",
                height: 150,
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 140,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 30,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
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

//onboarding3
class OnBoardingWidget3 extends StatelessWidget {
  final Function() onTap;
  const OnBoardingWidget3({super.key, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: Color(0xff63771E),
      ),
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(0.45, -0.95),
            child: Container(
              width: 237,
              height: 262,
              child: Image.asset(
                "images/entry3_pic.png",
                height: 150,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(1, 0),
            child: Container(
              height: 232,
              width: 328,
              padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 30),
              decoration: BoxDecoration(
                color: const Color(
                  0xff89A335,
                ),
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Pay By Card",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Text(
                      "The Order can be paid by credit card or in cash at the time of delivery",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.4, -0.45),
            child: Container(
              width: 92,
              height: 110,
              child: Image.asset(
                "images/entry3_2_pic.png",
                height: 150,
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 140,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 30,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
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
