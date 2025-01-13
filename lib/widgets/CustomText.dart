import 'dart:core';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color? color;
  final double fontsize;
  final double height;
  final TextAlign? align;
  const CustomText({super.key,required this.text,required this.fontWeight,this.color,required this.fontsize,required this.height,this.align});

  @override
  Widget build(BuildContext context) {
    var h=MediaQuery.of(context).size.height/845;
    var w=MediaQuery.of(context).size.width/390;
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize*h,
        fontFamily: 'Lexend',
        fontWeight: fontWeight,
        color: color,
        height: height,
      ),
      textAlign: (align==null)? TextAlign.center:align,
    );
  }
}
