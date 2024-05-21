import 'package:flutter/material.dart';
import 'package:flutter_imithon_2_oy/widgets/onboarding_widgets.dart';

class SecondEntry extends StatefulWidget {
  @override
  State<SecondEntry> createState() => _SecondEntryState();
}

class _SecondEntryState extends State<SecondEntry> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff63771E),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        children: [
          OnBoardingWidget1(onTap: () {
            pageController.nextPage(
              duration: Duration(milliseconds: 500),
              curve: Curves.linear,
            );
          }),
          OnBoardingWidget2(onTap: () {
            pageController.nextPage(
              duration: Duration(milliseconds: 500),
              curve: Curves.linear,
            );
          }),
          OnBoardingWidget3(onTap: () {
            pageController.nextPage(
              duration: Duration(milliseconds: 500),
              curve: Curves.linear,
            );
          })
        ],
      ),
    );
  }
}
