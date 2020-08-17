import 'package:flutter/material.dart';

const mPrimaryColor = Color.fromRGBO(99, 0, 238, 1);
const mPrimaryLightColor = Color.fromRGBO(153, 101, 244, 1);
const mPrimaryGradientColor = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color.fromRGBO(99, 0, 238, 1),
      Color(0xDA00EEff),
      Color.fromRGBO(238, 0, 139, 0.72)
    ]);
const mSecondaryColor = Color(0xda00eeff);
const mTextColor = Color.fromRGBO(0, 0, 0, 0.57);

const mAnimationDuration = Duration(milliseconds: 200);
