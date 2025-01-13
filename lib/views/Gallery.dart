import 'package:flutter/material.dart';

import '../Constants.dart';
import '../widgets/AppBar.dart';
import '../widgets/CustomImage.dart';
import '../widgets/DrawerWidget.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff000917),
              Color(0xff103E4B),
              Color(0xff030915),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          endDrawer: const Drawerwidget(
            flag: true,
          ),
          body: Container(
            margin: EdgeInsets.fromLTRB((16 / 390) * width, 0, (16 / 390) * width, 0),
            child: Column(
              children: [
                SizedBox(
                  height: (50 / 845) * height,
                ),
                Appbar(
                  drawercontext: context,
                ),
                SizedBox(
                  height: (5 / 845) * height,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        for (var url in Constants.gallery)
                          Column(
                            children: [
                              CustomImage(
                                url: url,
                                w: 357,
                                h: 250,
                              ),
                              SizedBox(
                                height: (30 / 845) * height,
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
