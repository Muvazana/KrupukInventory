import 'package:flutter/material.dart';
import 'package:krupuk_inventory/constants.dart';
import 'package:krupuk_inventory/screen/splash/component/splash_content.dart';
import 'package:krupuk_inventory/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "The Best Inventory for Our Product",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "The Best Analytics for Our Product",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "The Best Data Secure for Our Product",
      "image": "assets/images/splash_3.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Column buildDot({int index}) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 5),
          height: 6,
          width: currentPage == index ? 6,
          decoration: BoxDecoration(
            color: mPrimaryColor,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ],
    );
  }
}