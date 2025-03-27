import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  final BuildContext drawercontext;
  const Appbar({super.key, required this.drawercontext});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: (68 / 845) * height,
      width: (358 / 390) * width,
      padding: EdgeInsets.fromLTRB((24 / 390) * width, (14 / 845) * height,
          (14 / 390) * width, (14 / 845) * height),
      decoration: BoxDecoration(
        color: const Color(0xff000917),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CachedNetworkImage(
            imageUrl:
                "https://res.cloudinary.com/drpqitxvg/image/upload/v1736750701/White_aj1kdh.png",
            height: (42 / 390) * height,
            width: (36.45 / 845) * width,
          ),
          Builder(
            builder: (drawercontext) {
              return InkWell(
                onTap: () {
                  Scaffold.of(drawercontext).openEndDrawer();
                },
                child: CachedNetworkImage(
                  imageUrl:
                      'https://res.cloudinary.com/drpqitxvg/image/upload/v1743054862/Button_lvh1ro.png',
                  height: (40 / 845) * height,
                  width: (56 / 390) * width,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
