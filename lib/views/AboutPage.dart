import 'package:flutter/material.dart';
import 'package:kiitmun_2024/widgets/CustomColorText.dart';
import 'package:kiitmun_2024/widgets/DrawerWidget.dart';

import '../widgets/About.dart';
import '../widgets/AppBar.dart';
import '../widgets/CustomImage.dart';
import '../widgets/CustomText.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;

    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll:false),
      child: Container(
        //height: 3500,
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
                    height: (5 / 845) * height,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height:(30/845)*height ,),
                          const About(
                            text1: "About KIIT International Model United Nations",
                            imageurl: "https://res.cloudinary.com/drpqitxvg/image/upload/t_fghkj/v1736746493/kiitmun_noyfhj.png",
                            text2: "The KIIT International Model United Nations (KIITMUN) is a premier global simulation of the United Nations, renowned for its excellence and innovation since its inception in 2013. Organized by the dedicated Secretariat of students from the Kalinga Institute of Industrial Technology, KIITMUN has consistently set new benchmarks. In 2016, it gained international recognition by hosting the largest MUN gathering ever, with around 2,500 delegates. Adapting seamlessly to both online and offline formats, KIITMUN has continued to thrive, hosting over 1,200 delegates across fifteen committees in recent editions.\n\nKIITMUN provides delegates with opportunities to engage with a diverse global cohort, fostering critical diplomatic skills and understanding of international governance. The three-day conference, led by a distinguished Executive Board, includes interactive sessions that promote intellectual discourse and critical thinking. Beyond formal proceedings, cultural showcases and networking events help build lasting connections among participants. During the global pandemic of 2020, KIITMUN transitioned to a virtual format, achieving the distinction of the largest virtual MUN conference in Asia in 2021. KIITMUN's partnerships with UN entities and prestigious organizations like the British Council, IDP, and PETA Youth, along with global MUN conferences, solidify its status as a leader in promoting international cooperation and global harmony.",
                          ),
                          SizedBox(height: (30/845)*height,),
                          const Divider(
                            thickness: 1,
                            color: Color(0xff1C1C21),
                          ),
                          SizedBox(height: (30/845)*height,),
                          const About(
                            text1: "About KIIT",
                            imageurl: "https://res.cloudinary.com/drpqitxvg/image/upload/t_fghkj/v1736746494/kiit_txvqgi.png",
                            text2: "KIIT, the Kalinga Institute of Industrial Technology, is a distinguished Indian university known for its outstanding research and teaching. Established by Prof. Achyuta Samanta in Bhubaneswar in 1992-1993 as an industrial training institute with just 12 students and 2 teachers, KIIT has swiftly risen to become one of India's leading educational institutions. With a strong emphasis on academic excellence and providing abundant opportunities for students, KIIT is celebrated for its top-notch academic programs, research initiatives, and community engagement.\n\nIn 2004, the Ministry of HRD, Government of India, granted KIIT 'Deemed to be University' status, making it the youngest institute to achieve this recognition under Section 3 of the UGC Act, 1956. KIIT has been recognized as an Institute of Eminence, further solidifying its reputation as a premier educational institution. It has educated over 30,000 students from India and 65 other countries. Accredited by ABET (USA) and IET (UK), KIIT ranks 16th in India by NIRF, holds an A++ grade from NAAC, and is within the 601-800 cohort of the Times Higher Education World University Rankings 2024. Today, it educates around 40,000 students, including 2,000 international students from 65 countries. Its alumni excel in academia, corporate sectors, and civil services. The dedication of its Founder, staff, and supporters has propelled KIIT Deemed to be University into a premier educational hub in India, embodying progress and humanitarian values.",
                          ),
                          SizedBox(height: (30/845)*height,),
                          const Divider(
                            thickness: 1,
                            color: Color(0xff1C1C21),
                          ),
                          SizedBox(height: (30/845)*height,),
                          const About(
                            text1: "About KISS",
                            imageurl: "https://res.cloudinary.com/drpqitxvg/image/upload/t_fghkj/v1736746495/kiss_vltty4.png",
                            text2: "9% of India's population is tribal, and in Odisha, over 22.8% live in poverty with low literacy rates and limited access to education and healthcare. Driven by his own struggles, Dr. Achyuta Samanta founded the Kalinga Institute of Social Sciences (KISS) in 1992-93. Starting with 125 students, KISS now educates 80,000 indigenous children, including 30,000 on its main campus, 40,000 alumni, and 10,000 in satellite centers. It serves 62 tribal groups, including 13 Particularly Vulnerable Tribal Groups (PVTGs). In 2017, KISS became the world's first university exclusively for tribal students, accredited with an 'A Grade' by NAAC.\n\nKISS promotes holistic education, girl child empowerment, vocational training, and healthcare, significantly reducing naxalism, hunger, child labor, and trafficking. The institute has produced 5000 sportspersons excelling in national and international events. Since 2015, KISS has held Special Consultative Status with ECOSOC and collaborates with UN agencies. It has received the UNESCO International Literacy Prize 2022 and Green Gown International Awards. Following the 3E approach—Educate, Enable, Empower—KISS aims to preserve tribal culture and fulfill the Sustainable Development Goals 2030, targeting to reach over 2 million children in the next decade.",
                          ),
                          SizedBox(height: (30/845)*height,),
                          const Divider(
                            thickness: 1,
                            color: Color(0xff1C1C21),
                          ),
                          SizedBox(height: (30/845)*height,),
                          const Customcolortext(
                            customText:CustomText(
                              text: "Our Founder",
                              fontWeight: FontWeight.w600,
                              fontsize: 25,
                              height: 1.2,
                              color: Color(0xffFFFFFF),
                              align: TextAlign.start,
                            ),
                          ),
                          //SizedBox(height: (3/845)*height,),
                          SizedBox(
                            width: (358/390)*width,
                            child: const CustomText(
                              text: "Dr. Achyuta Samanta",
                              fontWeight: FontWeight.w600,
                              fontsize: 28,
                              height: 1,
                              color: Color(0xffFFFFFF),
                              align: TextAlign.start,
                            ),
                          ),
                          SizedBox(height: (30/845)*height,),
                          CustomImage(
                            url: "https://res.cloudinary.com/drpqitxvg/image/upload/t_fghkj/v1736746492/founder_u8zxkh.png",
                            w: 357,
                            h: 229,
                          ),
                          SizedBox(height: (20/845)*height,),
                          SizedBox(
                            width: (358/390)*width,
                            child: const CustomText(
                              text: "Dr. Achyuta Samanta's life is a testament to determination and social responsibility. Born into poverty in a remote Odisha village and losing his father at age four, he struggled for food and education for 15 years. Despite these challenges, he began teaching at 22 and founded KIIT (Kalinga Institute of Industrial Technology) and KISS (Kalinga Institute of Social Sciences) at 25 with just Rs 5000. KIIT now ranks among India's top universities with 40,000 students from 65 countries, while KISS provides free education, healthcare, sports, and vocational training to 80,000 disadvantaged tribal students.\n\nDr. Samanta also established the Kalinga Institute of Medical Sciences, Dental Sciences, and Nursing Sciences, along with a 2600-bed hospital. He developed Kalarabanka, Asia's first smart village, and has made significant contributions to art, culture, literature, media, spirituality, and rural development. In sports, he nurtured 14 Olympians and promoted physical fitness and national unity. Despite his numerous achievements, Dr. Samanta leads a simple, humble life. He holds 60 Honorary Doctorates and numerous awards, including the ISA Award for Service to Humanity from Bahrain and the 'Best Worker' Award from Mongolia. He has served as a Member of Parliament for the Lok Sabha since 2019.",
                              fontWeight: FontWeight.w400,
                              fontsize: 14,
                              height: 1.2,
                              color: Color(0xffFFFFFF),
                              align: TextAlign.justify,
                            ),
                          ),
                          SizedBox(height: (30/845)*height,),
                          const Divider(
                            thickness: 1,
                            color: Color(0xff1C1C21),
                          ),
                          SizedBox(height: (30/845)*height,),
                          const About(
                            text1: "About Incredible India",
                            imageurl: "https://res.cloudinary.com/drpqitxvg/image/upload/t_fghkj/v1736746493/incredible_vuxiql.png",
                            text2: "India, the world's 7th largest country, proudly occupies the greater part of South Asia. It is home to one of the oldest and greatest civilizations. With a rich heritage and myriad attractions, the country proudly stands among the most popular tourist destinations in the world. It covers an area of 3,287,263 sq. km, extending from the snow-covered Himalayan heights to the tropical rain forests of the south. India features a compelling mix of landscapes, architectural marvels, and vibrant cultural traditions. Since gaining independence, the country has proudly achieved significant socio-economic progress and has emerged as a robust economic powerhouse known for its advancements in technology and innovation. India is home to the finest architectural heritage, serene ghats, spectacular landscapes, and the largest tiger reserves. The term 'Incredible India' was proudly coined by the Ministry of Tourism considering the wondrous monuments and the architecture as the crown of India's beautiful and proud history. India is called incredible because of its diversity, which proudly makes India stand out from the crowd. India is a land of diversity - religions, cultures, languages, festivals, and ethnicity. India offers a never-ending list of proud possibilities to explore and experience something new every day.",
                          ),
                          SizedBox(height: (30/845)*height,),
                          const Divider(
                            thickness: 1,
                            color: Color(0xff1C1C21),
                          ),
                          SizedBox(height: (30/845)*height,),
                          const About(
                            text1: "Art of Giving",
                            imageurl: "https://res.cloudinary.com/drpqitxvg/image/upload/t_fghkj/v1736746489/aog_rvyfzc.png",
                            text2: "'The Art of Giving' is a compassionate non-profit organization founded by Shri Achyuta Samanta on May 17, 2013. Our mission is to create a world filled with unconditional love, peace, and happiness by encouraging acts of kindness and generosity. We believe that the key to peace and happiness lies in embracing the Art of Giving in every individual. Our vision is to promote a sense of peace and happiness among people of all ages, with a particular focus on children and youth, through genuine acts of giving, bolstered by empathy and compassion. Our goal is to raise awareness and spread the philosophy of the Art of Giving across all sections of human society globally by engaging in activities that involve sharing love, care, compassion, wisdom, knowledge, skills, and talents. Join us in spreading kindness and making a positive impact on the world!",
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
