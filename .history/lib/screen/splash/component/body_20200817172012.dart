import 'package:flutter/material.dart';
import 'package:krupuk_inventory/constants.dart';
import 'package:krupuk_inventory/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData =[

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
                  image: "assets/images/splash_1.png",
                  text: "The Best Inventory for Our Product",
                ),
              ),
            ),
            Expanded(flex: 2, child: SizedBox()),
          ],
        ),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "MY INVENTORY",
          style: TextStyle(
              fontSize: getProportionScreenWidth(36),
              color: mPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(text),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionScreenHeight(265),
          width: getProportionScreenWidth(235),
        )
      ],
    );
  }
}
