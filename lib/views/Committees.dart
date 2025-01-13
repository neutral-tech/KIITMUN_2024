import 'package:flutter/material.dart';
import 'package:kiitmun_2024/models/CommitteeModel.dart';
import 'package:kiitmun_2024/widgets/DrawerWidget.dart';

import '../Constants.dart';
import '../widgets/AppBar.dart';
import '../widgets/CommitteeList.dart';
import '../widgets/CustomText.dart';
class Committees extends StatefulWidget {
  Committees({super.key});
  List<CommitteeModel> list=Constants.beginner;
  
  @override
  State<Committees> createState() => _CommitteesState();
}

class _CommitteesState extends State<Committees> {

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
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
                    height: (15 / 845) * height,
                  ),
                  Container(
                    width: (358/390)*width,
                    height: (40/845)*height,
                    decoration: BoxDecoration(
                      color: const Color(0xff000917),
                      borderRadius: BorderRadius.circular((10/845)*height),
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              widget.list=Constants.beginner;
                            });
                          },
                          child: Container(
                             width: (119/390)*width,
                            height: (40/845)*height,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular((10/845)*height),
                              color: (widget.list!=Constants.beginner)?Colors.transparent:null,
                              gradient: (widget.list==Constants.beginner)?const LinearGradient(
                                  colors:[
                                    Color(0xffDAA952),
                                    Color(0xffFDE16F),
                                    Color(0xffE1B457),
                                  ]
                              ):null,
                            ),
                            child: Center(
                              child: CustomText(
                                text: "Beginner",
                                height: 1,
                                color: (widget.list==Constants.beginner)?Colors.black:Colors.white,
                                align: TextAlign.center,
                                fontWeight: FontWeight.bold,
                                fontsize: 12,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              widget.list=Constants.intermediate;
                            });
                          },
                          child: Container(
                            width: (119/390)*width,
                            height: (40/845)*height,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular((10/845)*height),
                              color: (widget.list!=Constants.intermediate)?Colors.transparent:null,
                              gradient: (widget.list==Constants.intermediate)?const LinearGradient(
                                  colors:[
                                    Color(0xffDAA952),
                                    Color(0xffFDE16F),
                                    Color(0xffE1B457),
                                  ]
                              ):null,
                            ),
                            child: Center(
                              child: CustomText(
                                text: "Intermediate",
                                height: 1,
                                color: (widget.list==Constants.intermediate)?Colors.black:Colors.white,
                                align: TextAlign.center,
                                fontWeight: FontWeight.bold,
                                fontsize: 12,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              widget.list=Constants.advanced;
                            });
                          },
                          child: Container(
                            height: (40/845)*height,
                            width: (119/390)*width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular((10/845)*height),
                              color: (widget.list!=Constants.advanced)?Colors.transparent:null,
                              gradient: (widget.list==Constants.advanced)?const LinearGradient(
                                  colors:[
                                    Color(0xffDAA952),
                                    Color(0xffFDE16F),
                                    Color(0xffE1B457),
                                  ]
                              ):null,
                            ),
                            child: Center(
                              child: CustomText(
                                text: "Advanced",
                                height: 1,
                                color: (widget.list==Constants.advanced)?Colors.black:Colors.white,
                                align: TextAlign.center,
                                fontWeight: FontWeight.bold,
                                fontsize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: (5/845)*height,
                  ),
                  Expanded(
                    child: Committeelist(
                      list: widget.list,
                    )
                  )
                ]
            ),
          ),
        ),
      ),
    );
  }
}
