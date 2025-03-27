import 'package:flutter/material.dart';
import 'package:kiitmun_2024/widgets/CustomText.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBox extends StatelessWidget {
  final String icon, text;
  const CustomBox({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
        width: (157 / 390) * width,
        height: (121 / 845) * height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((10 / 390) * width),
            color: Colors.transparent,
            border: Border.all(
              color: const Color(0xff262626),
              width: (2 / 390) * width,
            )),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: (55 / 390) * width,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: (19 / 845) * height,
                    ),
                    SizedBox(
                      width: (48 / 390) * width,
                      height: (48 / 845) * height,
                      child: CachedNetworkImage(
                        imageUrl: icon,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: (15 / 390) * width,
                ),
                CachedNetworkImage(
                    imageUrl:
                        "https://res.cloudinary.com/drpqitxvg/image/upload/v1743054862/arrowblack_x3dnuk.png")
              ],
            ),
            SizedBox(
              height: (15 / 845) * height,
            ),
            CustomText(
              text: text,
              fontWeight: FontWeight.w600,
              fontsize: (14 / 390) * width,
              height: (1 / 390) * width,
              color: const Color(0xffFFFFFF),
            )
          ],
        ));
  }
}
