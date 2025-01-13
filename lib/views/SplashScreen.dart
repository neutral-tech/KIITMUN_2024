import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      var height=MediaQuery.of(context).size.height;
      Navigator.pop(context);
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
                    CachedNetworkImage(
                      imageUrl: 'https://res.cloudinary.com/drpqitxvg/image/upload/v1736746491/divya_arkcpc.jpg'
                    ),
                    SizedBox(
                      height: (20/845)*height,
                    ),
                    Text(
                      "See you on 28 September\n7:00 PM-9:00 PM",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (17/845)*height,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        child: Center(
           child: CachedNetworkImage(imageUrl: 'https://res.cloudinary.com/drpqitxvg/image/upload/v1736746489/applogo_rxrn0p.jpg'),
             )
        )
    );
  }
}
