import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'CustomColorText.dart';
import 'CustomText.dart';
class Insigmia extends StatelessWidget {
  final String name,position,url,text;
  const Insigmia({super.key,required this.url,required this.name,required this.position,required this.text});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SizedBox(
        width: (126/845)*height,
        child: Column(
          children: [
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
                          color: const Color(0xff000917),
                          borderRadius: BorderRadius.circular((20/845)*height),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
                              Container(
                                padding: EdgeInsets.all((5/845)*height),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xffDAA952),
                                        Color(0xffFDE16F),
                                        Color(0xffE1B457)
                                      ],
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: CachedNetworkImageProvider(
                                      url,
                                    ),
                                    radius: (60/845)*height,
                                  ),
                                ),
                              ),
                              SizedBox(height: (15/845)*height,),
                              CustomText(
                                text: name,
                                fontWeight: FontWeight.w100,
                                fontsize: 20,
                                height: 1,
                                color: const Color(0xffFFFFFF),
                                align: TextAlign.start,
                              ),
                              SizedBox(height: (5/845)*height,),
                              Customcolortext(
                                  customText: CustomText(
                                    text: position,
                                    fontWeight: FontWeight.w600,
                                    fontsize: 15,
                                    height: 1,
                                  )
                              ),
                              SizedBox(height: (15/845)*height,),
                              CustomText(
                                text: text,
                                fontsize: 15,
                                fontWeight: FontWeight.w100,
                                color: const Color(0xffFFFFFF),
                                align: TextAlign.center,
                                height: 1,
                              ),
                              SizedBox(
                                height: (5/845)*height,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                );
              },
              child: Container(
                padding: EdgeInsets.all((5/845)*height),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                      colors:[
                        Color(0xff000917),
                        Color(0xff103E4B),
                        Color(0xff030915),
                      ],
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                  ),
                  boxShadow:  [
                    BoxShadow(
                      blurRadius: (10/845)*height,
                      color: Colors.grey,
                      spreadRadius: (2/845)*height,
                    ),
                  ],
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffDAA952),
                        Color(0xffFDE16F),
                        Color(0xffE1B457)
                      ],
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: CachedNetworkImageProvider(
                      url,
                    ),
                    radius: (57/845)*height,
                  )
                )
              ),
            ),
            SizedBox(height: (5/845)*height,),
            CustomText(
              text: name,
              fontWeight: FontWeight.w100,
              color: const Color(0xffFFFFFF),
              height: 1,
              fontsize: 16,
              align: TextAlign.center,
            ),
            SizedBox(height: (5/845)*height,),
            Customcolortext(
                customText: CustomText(
                  text: position,
                  fontWeight: FontWeight.w600,
                  fontsize: 10,
                  height: 1,
                  align: TextAlign.center,
                )
            )
          ],
        )
    );
  }
}
