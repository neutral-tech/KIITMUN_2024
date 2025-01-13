import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class Credits extends StatelessWidget {
  const Credits({super.key});

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
            appBar: AppBar(
              title: const Text(
                "Credits",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
              backgroundColor: Colors.transparent,
            ),
            body: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB((16/390)*width, 0,(16/390)*width,0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     Text(
                       "An App for KIIT MUN 2024",
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: (20/845)*height,
                         color: Colors.white
                       ),
                       textAlign: TextAlign.center,
                     ),
                    SizedBox(
                      height: (20/845)*height,
                    ),
                    Container(
                      width: (357/390)*width,
                      height: (250/845)*height,
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
                          imageUrl: 'https://res.cloudinary.com/drpqitxvg/image/upload/t_fghkj/v1736747379/web_ve4mvd.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: (10/845)*height,
                    ),
                    Text(
                      "Developed by:\nWeb and Tech Team",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: (20/845)*height,
                          color: Colors.white
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
