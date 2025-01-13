
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kiitmun_2024/widgets/DrawerWidget.dart';
import '../widgets/AppBar.dart';
import '../widgets/CustomBox.dart';
import '../widgets/CustomColorText.dart';
import '../widgets/CustomText.dart';
import '../widgets/Insigmia.dart';
import '../widgets/Socials.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
            flag: false,
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
                    height: (5 / 845) * height,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: (27 / 845) * height,
                          ),
                          Container(
                              width: (358 / 390) * width,
                              alignment: Alignment.topCenter,
                              child: const Customcolortext(
                                customText: CustomText(
                                  text: "The Ultimate Platform for Global Engagement, Diplomacy, and Empowering tomorrow's Leaders",
                                  fontsize: 22,
                                  fontWeight: FontWeight.w800,
                                  height: 1.4,
                                ),
                              )
                          ),
                          Container(
                              width: (358/390)*width,
                              margin: EdgeInsets.only(top: (5/845)*height),
                              alignment: Alignment.center,
                              child: const CustomText(
                                text: "With its engaging debates, diverse perspectives, and collaborative spirit, KIITMUN serves as a catalyst for honing critical thinking, diplomacy, and problem-solving skills. This extraordinary platform brings together aspiring diplomats, future leaders, and change-makers from around the world, providing them with an unparalleled opportunity to explore pressing global issues, engage in meaningful dialogue, and collectively work towards innovative solutions.",
                                fontsize: 15,
                                fontWeight: FontWeight.w300,
                                color: Color(0xffFFFFFF),
                                height: 1.2,
                              )
                          ),
                          SizedBox(
                            height: (20/845)*height,
                          ),
                          SizedBox(
                              width: (280/390)*width,
                              child: const CustomText(
                                text: "Join us for the 12th Edition of KIIT International MUN!",
                                fontWeight: FontWeight.w600,
                                fontsize: 20,
                                color: Color(0xffFFFFFF),
                                height: 1.2,
                              )
                          ),
                          Container(
                            width: (306/390)*width,
                            margin: EdgeInsets.only(top: (30/845)*height),
                            child: const CustomText(
                              text: "27-28-29 September-2024, KIIT Bhubaneswar",
                              fontWeight: FontWeight.w600,
                              fontsize: 16,
                              color: Color(0xffFFFFFF),
                              height: 1.1,
                            ),
                          ),
                          Container(
                            height: (280/845)*height,
                            width: (348/390)*width,
                            margin: EdgeInsets.only(top: (30/845)*height),
                            padding: EdgeInsets.all((10/390)*width),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: (1/390)*width,
                                  color: const Color(0xff041523),
                                ),
                                borderRadius: BorderRadius.circular((12/390)*width),
                                color: const Color(0xff020F1D),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff191919),
                                    spreadRadius: (4/390)*width,
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.pushNamed(context, '/committees');
                                      },
                                      child: const CustomBox(
                                        icon: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736750694/committees_q3u1cl.svg",
                                        text: "Committees",
                                      ),
                                    ),
                                    SizedBox(width: (10/390)*width,),
                                    InkWell(
                                      onTap: (){
                                        Navigator.pushNamed(context, '/gallery');
                                      },
                                      child: const CustomBox(
                                        icon: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736750698/gallary_gp30ml.svg",
                                        text: "Gallery",
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: (10/845)*height,),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.pushNamed(context, '/about');
                                      },
                                      child: const CustomBox(
                                        icon: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736750693/aboutkiit_hkohac.svg",
                                        text: "About Us",
                                      ),
                                    ),
                                    SizedBox(width: (10/390)*width,),
                                    InkWell(
                                      onTap: (){
                                        Navigator.pushNamed(context, '/downloads');
                                      },
                                      child: const CustomBox(
                                        icon: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736750696/downloads_blfj3f.svg",
                                        text: "Downloads",
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: (40/845)*height,),

                          SizedBox(
                            height: (223/390)*width,
                            width: (358/390)*width,
                            child: CachedNetworkImage(
                              imageUrl: 'https://res.cloudinary.com/drpqitxvg/image/upload/t_def/v1736746498/pic1_oedxib.png',
                              fit: BoxFit.fill,
                            ),
                          ),//Image will go in place of this container
                          SizedBox(height: (40/845)*height,),
                          SizedBox(
                            width: (358/390)*width,
                            child: const CustomText(
                              text: "MESSAGE FROM OUR SECRETARY GENERAL",
                              fontWeight: FontWeight.w600,
                              fontsize: 15,
                              height: 1,
                              color: Color(0xff797C86),
                              align: TextAlign.start,
                            ),
                          ),
                          SizedBox(height: (5/845)*height,),
                          SizedBox(
                            width: (358/390)*width,
                            child: const CustomText(
                              text: "ANISH SINGH",
                              fontsize: 29,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFFFFFF),
                              height: 1,
                              align: TextAlign.start,
                            ),
                          ),
                          SizedBox(height: (15/845)*height,),
                          const Divider(
                            thickness: 1,
                            color: Color(0xff1C1C21),
                          ),
                          SizedBox(height: (25/845)*height,),
                          Container(
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
                            borderRadius:BorderRadius.circular((20/845)*height) ,
                            ),
                            width: (358/390)*width,
                            height: (375/390)*width,
                            child: CachedNetworkImage(
                              imageUrl: 'https://res.cloudinary.com/drpqitxvg/image/upload/v1736746489/anish_himdou.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: (15/845)*height,
                          ),
                          Container(
                              width: (358/390)*width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular((16/390)*width),
                                  border: Border.all(
                                    color: const Color(0xff1C1C21),
                                    width: (1.7/390)*width,
                                  )
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all((20/390)*width),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.network('https://res.cloudinary.com/drpqitxvg/image/upload/v1736750700/star_xohgo1.svg'),
                                            SizedBox(width: (5/390)*width,),
                                            const Expanded(
                                                child: Customcolortext(
                                                  customText:  CustomText(
                                                    text: "Respected faculty members, delegates, and my Secretariat,",
                                                    fontsize: 21,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.1,
                                                    align: TextAlign.start,
                                                  ),
                                                )
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: (15/845)*height,),
                                        const CustomText(
                                          text: "Michael Phelps quite rightly quoted “The Greats Do Things When They Don't Always Want To And That's The Separation”. This is an idea I want to instill amongst all the members associated with KIIT International Model United Nations 2024. My involvement with KIIT International MUN has been since the initial days of my college and hereon participating in numerous conferences have taught me invaluable lessons about diplomacy, captainship, and the power of youth. Guided by the dogma of discipline, dedication, and determination, I presume that each individual be endowed with the potential to effectuate tangible change in the world.\n\nThis conference is more than just a series of debates; it's a unique opportunity to embrace diverse perspectives, challenge doctrinal thinking, and collaborate on innovative solutions. The issues that are discussed here may seem vast and complex, but the essence lies in considering that every idea and every voice is important. With a mindset of focus, fortitude and foresight, combined with meaningful dialogue and progressive ideology, we can pave the way for a better future.\n\nEngaging in discussions and draft resolutions holds key value, the friendships forged and the insights gained will have a lasting impact. Approaching every session with courage and a vision on destiny should be the goal. We need not be afraid to step out of our comfort zone and take on new challenges because the best way to predict the future is to create it. Your efforts here are not just about winning awards; they’re about making a difference and such a difference that is created by changing small things, trusting the process and leaving no stones unturned.",
                                          fontWeight: FontWeight.w400,
                                          fontsize: 15,
                                          height: 1.3,
                                          color: Color(0xffAFB0B6),
                                          align: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    thickness: (1.7/390)*width,
                                    color: const Color(0xff1C1C21),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all((20/390)*width),
                                    child: const Socials(),
                                  )
                                ],
                              )
                          ),
                          SizedBox(height: (30/845)*height,),
                          SizedBox(
                            width: (358/390)*width,
                            child: const CustomText(
                              text: "THE KIIT MUN INSIGNIA",
                              fontsize: 23,
                              fontWeight: FontWeight.w600,
                              height: 1,
                              align: TextAlign.center,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          SizedBox(height: (20/845)*height,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsets.all((15/845)*height),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Insigmia(
                                    name: "Anish Singh",
                                    url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736746489/anish_himdou.png",
                                    position: "SECRETARY GENERAL",
                                    text: "“The best way to predict your future is to create it.” As the Secretary General of the conference this embodies the spirit, I wish to instill in KIIT International Model United Nations 2024. Since joining KIIT, my journey through numerous conferences has taught me diplomacy, leadership, and the power of youth. This conference is a chance to embrace diverse perspectives and collaborate on innovative solutions. Every idea and voice matter. With focus, courage, and meaningful dialogue, we can create a better future. The efforts here are about making a difference, trusting the process, and leaving no stone unturned.",
                                  ),
                                  SizedBox(width: (30/845)*width,),
                                  const Insigmia(
                                    name: "Saumyadeep Banik",
                                    url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736746501/saumyadeep_fthl25.png",
                                    position: "DEPUTY SECRETARY GENERAL",
                                    text: "Throughout my tenure with KIIT MUN, I've progressed from participant to organizing and leading major events, which has been incredibly fulfilling. As Deputy Secretary General of KIIT International MUN 2024, my extensive leadership experience includes managing logistics, coordinating teams, and ensuring conference success. Committed to maintaining excellence, I actively seek impactful sponsor partnerships. Driven by a passion for achieving meaningful outcomes, I eagerly anticipate contributing to a year of notable achievements with the esteemed KIIT MUN community.",
                                  ),
                                  SizedBox(width: (30/845)*width,),
                                  const Insigmia(
                                    name: "Sarvagya Singh",
                                    url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736746498/sarvagya_g06czf.png",
                                    position: "DIRECTOR GENERAL",
                                    text: "My journey with KIIT MUN over the past four years has been incredible. Starting as a participant, I advanced to delegate, organized multiple MUNs, and eventually led teams for major events. KIIT MUN has been the closest to my heart. KIIT MUN fosters critical thinking, diplomacy, and leadership, making it a platform that unites passionate individuals from diverse backgrounds. Growing within such a inspiring community has been an honor. As Director General of KIIT International MUN 2024, I'm excited about our goals for this year and look forward to growth, learning, and impactful discussions ahead.",
                                  ),
                                  SizedBox(width: (30/845)*width,),
                                  const Insigmia(
                                    name: "Divyanshi Tiwary",
                                    url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736746491/divyanshi_dai6wo.png",
                                    position: "DEPUTY DIRECTOR GENERAL",
                                    text: "As Deputy Director General, I am deeply honored and grateful for the opportunity to serve in this esteemed role for KIITMUN 2024, the conference where we are committed to delivering unparalleled quality and excellence. This conference will be a platform for insightful discussions and global collaboration, bringing together diverse perspectives and innovative ideas. I invite you to join us in making KIITMUN 2024 a remarkable experience. Let’s work together to create impactful solutions for a better future and continue the tradition of excellence that KIITMUN stands for.",
                                  ),
                                  SizedBox(width: (30/845)*width,),
                                  const Insigmia(
                                    name: "Aman Kumar Jena",
                                    url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736746489/aman_dvspd8.png",
                                    position: "CHARGE D' AFFAIRS",
                                    text: "With extensive experience in organizing events at KIIT, leading teams for major events and deepening my connection to KIIT MUN. This platform, which I hold in high regard, cultivates critical thinking, diplomacy, and leadership, bringing together individuals from diverse backgrounds who share a common passion. KIIT MUN has been the closest to my heart and being part of this inspiring community has been an honor. As Charge D' Affairs of KIIT International MUN 2024, I am excited about our goals for the year and look forward to the growth, and impactful discussions ahead.",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: (30/845)*height,),
                        ],
                      ),
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
