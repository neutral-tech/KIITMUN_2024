import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kiitmun_2024/models/CommitteeModel.dart';

import 'CustomColorText.dart';
import 'CustomImage.dart';
import 'CustomText.dart';
class Committee extends StatelessWidget {
  final CommitteeModel committee;
  const Committee({super.key,required this.committee});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: (50/845)*height),
      child: InkWell(
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
                                  text: committee.name,
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
                                imageUrl:committee.url,
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
                                  committee.delegation,
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
                                text: committee.text,
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
        child: CustomImage(
          url: committee.url,
          h: 250,
          w: 357,
        ),
      ),
    );
  }
}
