
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Palette{

  static final LinearGradient backGround =  LinearGradient(
      tileMode: TileMode.decal,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,

      colors: [
        Colors.yellow.shade50,
        const  Color.fromRGBO(238, 242, 35, 0.01),

        const Color.fromRGBO(0, 208, 254, 0.1),
        Colors.purple.shade50,

      ]);
}
