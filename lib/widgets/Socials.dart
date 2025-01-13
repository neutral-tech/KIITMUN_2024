import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Socials extends StatelessWidget {
  const Socials({super.key});
  Future<void> launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      width: (156/390)*width,
      height: (60/845)*height,
      padding: EdgeInsets.all((1.3/390)*width),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xffDAA952),Color(0xffFDE16F),Color(0xffE1B457)],
        ),
        borderRadius: BorderRadius.circular((100/390)*width),
      ),
      child: Container(
        padding: EdgeInsets.only(left: (8/390)*width,right: (8/390)*width),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular((100/390)*width),
          gradient: const LinearGradient(
            colors: [Color(0xff000917),Color(0xff103E4B),Color(0xff030915)],
            end: Alignment.bottomRight,
            begin: Alignment.topLeft,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                launchUrl(Uri.parse("https://www.instagram.com/instakiitmun"));
              },
              child: Container(
                height: (40/845)*height,
                width: (40/390)*width,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xffDAA952),Color(0xffFDE16F),Color(0xffE1B457)],
                  ),
                ),
                child: Center(
                  child: SvgPicture.network('https://res.cloudinary.com/drpqitxvg/image/upload/v1736750697/fb_j1g5sz.svg'),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                launchUrl(Uri.parse("https://x.com/kiitmun"));
              },
              child: Container(
                height: (40/845)*height,
                width: (40/390)*width,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xffDAA952),Color(0xffFDE16F),Color(0xffE1B457)],
                  ),
                ),
                child: Center(
                  child: SvgPicture.network('https://res.cloudinary.com/drpqitxvg/image/upload/v1736750702/x_bdkqph.svg'),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                launchUrl(Uri.parse("https://www.linkedin.com/in/kiitmun"));
              },
              child: Container(
                height: (40/845)*height,
                width: (40/390)*width,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xffDAA952),Color(0xffFDE16F),Color(0xffE1B457)],
                  ),
                ),
                child: Center(
                  child: SvgPicture.network('https://res.cloudinary.com/drpqitxvg/image/upload/v1736750699/ln_kp4dwr.svg'),
                ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
