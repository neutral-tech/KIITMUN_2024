import 'package:flutter/material.dart';

import '../Constants.dart';
import '../widgets/AppBar.dart';
import '../widgets/DrawerWidget.dart';
import '../widgets/PdfWidget.dart';
class Downloads extends StatelessWidget {
  const Downloads({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll:false),
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
            )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          endDrawer: const Drawerwidget(
            flag: true,
          ),
          body:Container(
            margin: EdgeInsets.fromLTRB((16/390)*width, 0,(16/390)*width,0),
            child: Column(
              children: [
                SizedBox(
                  height: (50/845) * height,
                ),
                Appbar(
                  drawercontext: context,
                ),
                SizedBox(
                  height: (5/ 845) * height,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: (30/845)*height,
                        ),
                        Pdfwidget(
                          model1: Constants.pdflist[0],
                          model2: Constants.pdflist[1],
                        ),
                        SizedBox(
                          height: (60/845)*height,
                        ),
                        Pdfwidget(
                          model1: Constants.pdflist[2],
                          model2: Constants.pdflist[3],
                        ),
                        SizedBox(
                          height: (60/845)*height,
                        ),
                        Pdfwidget(
                          model1: Constants.pdflist[4],
                          model2: Constants.pdflist[5],
                        ),
                        SizedBox(
                          height: (60/845)*height,
                        ),
                        Pdfwidget(
                          model1: Constants.pdflist[6],
                          model2: Constants.pdflist[7],
                        ),
                        SizedBox(
                          height: (60/845)*height,
                        ),
                        Pdfwidget(
                          model1: Constants.pdflist[8],
                          model2: Constants.pdflist[9],
                        ),
                        SizedBox(
                          height: (60/845)*height,
                        ),
                        Pdfwidget(
                          model1: Constants.pdflist[10],
                          model2: Constants.pdflist[11],
                        ),
                        SizedBox(
                          height: (60/845)*height,
                        ),
                        Pdfwidget(
                          model1: Constants.pdflist[12],
                          model2: Constants.pdflist[13],
                        ),
                        SizedBox(
                          height: (60 / 845) * height,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        ),
      );
  }
}
