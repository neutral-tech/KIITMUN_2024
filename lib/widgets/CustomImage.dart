import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String url;
  var h;
  var w;
  CustomImage({super.key,required this.url,required this.h,required this.w});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Container(
      width: (w/390)*width,
      height: (h/390)*width,
      padding: EdgeInsets.all((4/390)*width),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xffDAA952),Color(0xffFDE16F),Color(0xffE1B457)],
        ),
        borderRadius: BorderRadius.circular((16/390)*width),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular((16/390)*width),
        child: CachedNetworkImage(
          imageUrl:url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
