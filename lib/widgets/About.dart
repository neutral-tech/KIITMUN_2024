import 'package:flutter/material.dart';

import 'CustomColorText.dart';
import 'CustomImage.dart';
import 'CustomText.dart';
class About extends StatelessWidget {
  final String text1,text2,imageurl;
  const About({super.key,required this.text1,required this.text2,required this.imageurl});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Column(
      children: [
        Customcolortext(
          customText:CustomText(
            text: text1,
            fontWeight: FontWeight.w600,
            fontsize: 28,
            height: 1.2,
            color: const Color(0xffFFFFFF),
            align: TextAlign.start,
          ),
        ),
        SizedBox(height: (30/845)*height,),
        CustomImage(
          url: imageurl,
          w: 357,
          h: 280,
        ),
        SizedBox(height: (20/845)*height,),
        SizedBox(
          width: (358/390)*width,
          child: CustomText(
            text: text2,
            fontWeight: FontWeight.w400,
            fontsize: 14,
            height: 1.2,
            color: const Color(0xffFFFFFF),
            align: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
