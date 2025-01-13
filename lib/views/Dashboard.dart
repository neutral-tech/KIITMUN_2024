import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:kiitmun_2024/models/CommitteeModel.dart';

import '../Constants.dart';
import '../models/Delegate.dart';
import '../widgets/AppBar.dart';
import '../widgets/CustomColorText.dart';
import '../widgets/CustomText.dart';
import '../widgets/DrawerWidget.dart';
import '../widgets/WebViewScreen.dart';
class Dashboard extends StatefulWidget {
  Delegate delegate;
  Dashboard({super.key,required this.delegate});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Future<void> _logout() async {
    await Hive.deleteFromDisk(); // This deletes everything
    Navigator.popUntil(context, ModalRoute.withName('/'));
  }
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    String locate=Constants.map[widget.delegate.abbr]['location'];
    String level=Constants.map[widget.delegate.abbr]['level'];
    int i=Constants.map[widget.delegate.abbr]['index'];
    CommitteeModel model;
    if(level=='beginner'){
      model=Constants.beginner[i];
    }
    else if(level=='intermediate'){
      model=Constants.intermediate[i];
    }
    else{
      model=Constants.advanced[i];
    }
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
            body: Container(
              color: Colors.transparent,
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
                    height: (5 / 845) * height,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: (40/845)*height,
                          ),
                          LayoutBuilder(
                              builder: (context,constraints) {
                                return Stack(
                                  children: [
                                    Container(
                                        width: (357 / 390) * width,
                                        margin: EdgeInsets.only(top:(30 / 845) * height),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular((15/845)*height),
                                            border: Border.all(
                                              width: (2/390)*width,
                                              color: const Color(0xffDAA952),
                                            ),
                                            image: const DecorationImage(
                                                image: CachedNetworkImageProvider('https://res.cloudinary.com/drpqitxvg/image/upload/v1736746490/back_ecs5h5.png'),
                                                fit: BoxFit.fill
                                            )
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular((15/845)*height),
                                              gradient: const LinearGradient(
                                                  colors: [
                                                    Color(0xff000000),
                                                    Color(0xff000000),
                                                    Colors.transparent
                                                  ],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight
                                              )
                                          ),
                                          child:Row(
                                              children: [
                                                Container(
                                                  width: (220/390)*width,
                                                  padding: EdgeInsets.all((16/845)*height),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Hey!\n${widget.delegate.name}',
                                                        style: TextStyle(
                                                          fontSize: (24 / 845) * height,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.white, // Changed to white for better visibility
                                                        ),
                                                      ),
                                                      SizedBox(height: (10 / 845) * height),
                                                      Text(
                                                        'MUN Id: ${widget.delegate.id}',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: (15/845)*height,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: (10/845)*height,
                                                      ),
                                                      Text(
                                                        'College: ${widget.delegate.college}',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: (15/845)*height,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ]
                                          ) ,
                                        )
                                    ),
                                    Positioned(
                                      top: 0,
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        height: constraints.maxHeight,
                                        margin: EdgeInsets.only(right: (20/390)*width),
                                        child: CachedNetworkImage(imageUrl: 'https://res.cloudinary.com/drpqitxvg/image/upload/v1736746497/person_w3omsh.png',alignment: Alignment.bottomRight,fit: BoxFit.fitHeight,),
                                      ),
                                    )
                                  ],
                                );
                              }
                          ),
                    Container(
                      width: (357 / 390) * width,
                      margin: EdgeInsets.only(top:(30 / 845) * height),
                      padding: EdgeInsets.all((16/845)*height),
                      decoration: BoxDecoration(
                        color: Colors.black,
                          borderRadius: BorderRadius.circular((15/845)*height),
                          border: Border.all(
                            width: (2/390)*width,
                            color: const Color(0xffDAA952),
                          ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Allotment Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: (18/845)*height
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: (10/845)*height,
                          ),
                          Text(
                            'Committee: ${widget.delegate.committee} (${widget.delegate.abbr})',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: (15/845)*height,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: (10 / 845) * height),
                          Text(
                            'Location: ${widget.delegate.location}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: (15/845)*height,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: (30/845)*height,
                          ),
                          IconButton(
                              onPressed: (){
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => WebViewScreen(
                                    url: locate,
                                  )),
                                );
                              },
                              icon: Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                                size: (50/845)*height,
                              )
                          ),
                          SizedBox(
                            height: (30/845)*height,
                          ),
                          InkWell(
                            onTap: (){
                              showDialog(
                                  context: context,
                                  builder: (context) => Dialog(
                                    elevation: 20,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular((20/845)*height),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.all((10/390)*height),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular((20/845)*height),
                                      ),
                                      child: Column(
                                          children:[
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                InkWell(
                                                  onTap: (){
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        width: (2/845)*height,
                                                        color: Colors.grey,
                                                      ),
                                                      borderRadius: BorderRadius.circular((8/845)*height),
                                                    ),
                                                    child: const Icon(
                                                      Icons.close,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: (8/845)*height,
                                            ),
                                            Expanded(
                                              child: ScrollConfiguration(
                                                behavior: const ScrollBehavior().copyWith(overscroll:false),
                                                child: SingleChildScrollView(
                                                  scrollDirection: Axis.vertical,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Customcolortext(
                                                        customText: CustomText(
                                                          text: model.name,
                                                          fontWeight: FontWeight.w100,
                                                          fontsize: 20,
                                                          height: 1,
                                                          color: const Color(0xffFFFFFF),
                                                          align: TextAlign.center,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: (20/845)*height,
                                                      ),
                                                      CachedNetworkImage(
                                                        imageUrl:model.url,
                                                      ),
                                                      SizedBox(
                                                        height: (20/845)*height,
                                                      ),
                                                      Container(
                                                        padding: EdgeInsets.all((7/390)*width),
                                                        decoration: BoxDecoration(
                                                          gradient: const LinearGradient(
                                                              colors: [
                                                                Color(0xffDAA952),
                                                                Color(0xffFDE16F),
                                                                Color(0xffE1B457),
                                                              ]
                                                          ),
                                                          borderRadius: BorderRadius.circular((50/845)*height),
                                                        ),
                                                        child: Text(
                                                          model.delegation,
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: (16/845)*height,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: (20/845)*height,
                                                      ),
                                                      CustomText(
                                                        text: model.text,
                                                        height: 1.2,
                                                        fontsize: 14,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.white,
                                                        align: TextAlign.justify,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                  )
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: (5/845)*height,horizontal: (7/845)*height),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffDAA952),
                                    Color(0xffFDE16F),
                                    Color(0xffE1B457),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular((5/845)*height),
                              ),
                              child: Text(
                                'Explore Now',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: (15/845)*height,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: (10/845)*height,
                          )
                        ],
                      ),
                    ),
                          SizedBox(
                            height: (50/845)*height,
                          ),
                          InkWell(
                            onTap:_logout,
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: (5/845)*height,horizontal: (7/845)*height),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffDAA952),
                                    Color(0xffFDE16F),
                                    Color(0xffE1B457),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular((5/845)*height),
                              ),
                              child: Text(
                                'Log Out',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: (18/845)*height,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
