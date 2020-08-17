import 'package:flutter/material.dart';
import 'package:krupuk_inventory/constants.dart';
import 'package:krupuk_inventory/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
              child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    Text(
                      "MY INVENTORY",
                      style: TextStyle(
                          fontSize: getProportionScreenWidth(36),
                          color: mPrimaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("The Best Inventory for Our Product")
                  ],
                )),
            Expanded(flex: 2, child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
