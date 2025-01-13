import 'package:flutter/material.dart';

import 'CustomText.dart';
class Customcolortext extends StatelessWidget {
  final CustomText customText;
  const Customcolortext({super.key,required this.customText});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => const LinearGradient(
        colors: [
          Color(0xffDAA952),
          Color(0xffFDE16F),
          Color(0xffE1B457)
        ],
      ).createShader(bounds),
      child: SizedBox(
        width: (358/390)*width,
        child: customText,
      ),
    );
  }
}
