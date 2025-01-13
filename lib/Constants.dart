import 'package:kiitmun_2024/models/PdfModel.dart';

import 'models/CommitteeModel.dart';

class Constants{
  static List<String> gallery=[
    'https://res.cloudinary.com/drpqitxvg/image/upload/t_abc/v1736748621/seven-min_btixba.jpg',
    'https://res.cloudinary.com/drpqitxvg/image/upload/t_abc/v1736748456/nine-min_srl113.jpg',
    'https://res.cloudinary.com/drpqitxvg/image/upload/t_abc/v1736748455/two-min_ouydis.jpg',
    'https://res.cloudinary.com/drpqitxvg/image/upload/t_abc/v1736748453/one-min_og944i.jpg',
    'https://res.cloudinary.com/drpqitxvg/image/upload/t_abc/v1736748452/five-min_afvpwx.jpg',
    'https://res.cloudinary.com/drpqitxvg/image/upload/t_abc/v1736746504/three_v86qzw.jpg',
    'https://res.cloudinary.com/drpqitxvg/image/upload/t_abc/v1736746503/six_n00808.jpg',
    'https://res.cloudinary.com/drpqitxvg/image/upload/t_abc/v1736746493/eight_eaqcth.jpg',
  ];
  static Map<String,dynamic> map={
    'DISEC':{
      'level': "beginner",
      'index': 0,
      'location': "https://www.google.com/maps/place/KIIT+Campus+17,+School+of+Computer+Engineering+(Block+D)/@20.3490973,85.8194483,17z/data=!3m1!4b1!4m6!3m5!1s0x3a19091fb41e4439:0xc9086ff23538f500!8m2!3d20.3490973!4d85.8194483!16s%2Fg%2F11jztgsygp?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    },
    'ECOSOC':{
      'level': "beginner",
      'index': 1,
      'location': "https://www.google.com/maps/place/KIIT+Campus+3+(Kathajodi)/@20.3536924,85.8165275,17z/data=!3m1!4b1!4m6!3m5!1s0x3a190922942e4c53:0x608893626df6fc84!8m2!3d20.3536924!4d85.8165275!16s%2Fg%2F11c4c4r548?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    },
    'UNEA':{
      'level': "beginner",
      'index': 2,
      'location': "https://www.google.com/maps/place/School+of+Electronics+Engineering,+KIIT+University,+Prasanti+Vihar+Rd,+Chandaka+Industrial+Estate,+K+I+I+T+University,+Patia,+Bhubaneswar,+Odisha+751024/@20.3556404,85.8205322,17.31z/data=!4m6!3m5!1s0x3a19093dabcae313:0xccbc24ae2e7770dd!8m2!3d20.3553353!4d85.8206918!16s%2Fg%2F12hmsm1wt?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    },
    'UNHCR':{
      'level': "beginner",
      'index': 3,
      'location': "https://www.google.com/maps/place/KIIT+Central+Library/@20.3543819,85.8162676,17z/data=!3m1!4b1!4m6!3m5!1s0x3a1909002e1aba5d:0x3a057a05b12b30a5!8m2!3d20.3543819!4d85.8162676!16s%2Fg%2F11vyvf75mx?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    },
    'WHA':{
      'level': "beginner",
      'index': 4,
      'location': "https://www.google.com/maps/place/KIIT+Campus+3+(Kathajodi)/@20.3536924,85.8165275,17z/data=!3m1!4b1!4m6!3m5!1s0x3a190922942e4c53:0x608893626df6fc84!8m2!3d20.3536924!4d85.8165275!16s%2Fg%2F11c4c4r548?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    },
    'UNWOMEN':{
      'level': "beginner",
      'index': 5,
      'location': "https://www.google.com/maps/place/KIIT+Central+Library/@20.3543819,85.8162676,17z/data=!3m1!4b1!4m6!3m5!1s0x3a1909002e1aba5d:0x3a057a05b12b30a5!8m2!3d20.3543819!4d85.8162676!16s%2Fg%2F11vyvf75mx?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    },
    'IP':{
      'level': "beginner",
      'index': 6,
      'location': "https://www.google.com/maps/place/KIIT+Campus+17,+School+of+Computer+Engineering+(Block+D)/@20.3490973,85.8168734,17z/data=!3m1!4b1!4m6!3m5!1s0x3a19091fb41e4439:0xc9086ff23538f500!8m2!3d20.3490973!4d85.8194483!16s%2Fg%2F11jztgsygp?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    },
    'UNDP':{
      'level': "intermediate",
      'index': 0,
      'location': "https://www.google.com/maps/place/KIIT+Campus+8+(Kaveri)/@20.3513532,85.8168282,17z/data=!3m1!4b1!4m6!3m5!1s0x3a190917c16c7959:0xf91d5e37ccb2b900!8m2!3d20.3513532!4d85.8194031!16s%2Fg%2F11c526sz_c?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    },
    'UNODC':{
      'level': "intermediate",
      'index': 1,
      'location': "https://www.google.com/maps/place/KIIT+Campus+6+(Kosi)/@20.3534414,85.8170106,17z/data=!3m1!4b1!4m6!3m5!1s0x3a19093d69c9edc1:0x4f11974507a587f3!8m2!3d20.3534414!4d85.8195855!16s%2Fg%2F11clsgbt97?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    },
    'HLPF':{
      'level': "intermediate",
      'index': 2,
      'location': "https://www.google.com/maps/place/KIIT+Campus+7+Auditorium/@20.3505764,85.8179297,17z/data=!3m1!4b1!4m6!3m5!1s0x3a190917b328eb5b:0x2480d9830352f92c!8m2!3d20.3505764!4d85.8205046!16s%2Fg%2F1hdz4pbvr?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    },
    'SPECPOL':{
      'level': "intermediate",
      'index': 3,
      'location': "https://www.google.com/maps/place/KIIT+Campus+8+(Kaveri)/@20.3513532,85.8168282,17z/data=!3m1!4b1!4m6!3m5!1s0x3a190917c16c7959:0xf91d5e37ccb2b900!8m2!3d20.3513532!4d85.8194031!16s%2Fg%2F11c526sz_c?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    },
    'C34':{
      'level': "advanced",
      'index': 0,
      'location': "https://www.google.com/maps/place/KIIT+Campus+6+(Kosi)/@20.3534414,85.8170106,17z/data=!3m1!4b1!4m6!3m5!1s0x3a19093d69c9edc1:0x4f11974507a587f3!8m2!3d20.3534414!4d85.8195855!16s%2Fg%2F11clsgbt97?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    },
    'HJCC':{
      'level': "advanced",
      'index': 1,
      'location': "https://www.google.com/maps/place/KIIT+Central+Library/@20.3543819,85.8162676,17z/data=!3m1!4b1!4m6!3m5!1s0x3a1909002e1aba5d:0x3a057a05b12b30a5!8m2!3d20.3543819!4d85.8162676!16s%2Fg%2F11vyvf75mx?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    },
    'CEIRPP':{
      'level': "advanced",
      'index': 2,
      'location': "https://www.google.com/maps/place/KIIT+Campus+6+(Kosi)/@20.3534414,85.8170106,17z/data=!3m1!4b1!4m6!3m5!1s0x3a19093d69c9edc1:0x4f11974507a587f3!8m2!3d20.3534414!4d85.8195855!16s%2Fg%2F11clsgbt97?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    },
    'UNSC':{
      'level': "advanced",
      'index': 3,
      'location': "https://www.google.com/maps/place/KIIT+Campus+6+(Kosi)/@20.3534414,85.8170106,17z/data=!3m1!4b1!4m6!3m5!1s0x3a19093d69c9edc1:0x4f11974507a587f3!8m2!3d20.3534414!4d85.8195855!16s%2Fg%2F11clsgbt97?entry=ttu&g_ep=EgoyMDI0MDkyMi4wIKXMDSoASAFQAw%3D%3D"
    }
  };
  static List<CommitteeModel> beginner=[
    const CommitteeModel(
      url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736746491/disec_cdzpfx.png",
      name: "Disarmament and International Security\n(DISEC)",
      delegation: "Single Delegation",
      text: "Key to disarmament could be found in cooperation for mutual benefit — not competition for mutual destruction.” -António Guterres\n\nThe Disarmament and International Security Committee (DISEC) was founded with the creation of the UN in 1945 and it is the first out of the six main committees within the UN General Assembly. It focuses on fostering global peace and security, tackling the critical issues like arms control, non-proliferation of weapons, peaceful conflict resolution, disarmament treaties and regional security concerns.DISEC serves as a platform for member states to discuss and negotiate on various issues, ultimately making recommendations to the UN General Assembly for further action. Through these discussions and collaborative efforts, DISEC strives for a safer world by promoting disarmament and international cooperation on security threats.\nIt is a beginner level, single delegate committee.",
    ),
    const CommitteeModel(
      url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736746492/ecosoc_dwjeoo.png",
      name: "United Nations Economic and Social Council\n(ECOSOC)",
      delegation: "Double Delegation",
      text: "Well, I believe that the best answer for tensions of all nature, is economic and social development”. -Munir Akram\nThe Economic and Social Council (ECOSOC) advances sustainable development across economic, social, and environmental dimensions. Established by the UN Charter in 1945, ECOSOC is among the United Nations' six principal organs, with its headquarters based in New York City. It consists of 54 member nations.\nIt serves as a pivotal platform for fostering debate, innovation, and consensus-building towards achieving global goals. ECOSOC coordinates UN agencies, funds, and programs to promote economic, social, and cultural cooperation, aiming for higher living standards, full employment, and sustainable progress worldwide.It operates as a Beginner Level, Double Delegate committee and emphasizes humanitarian aspects and economic development of member states.",
    ),
    const CommitteeModel(
      url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736748933/unea_mhkhbc.png",
      name: "United Nations Environment Assembly\n(UNEA)",
      delegation: "Single Delegation",
      text: "“Repairing relations with Mother Earth is the mother of all of humanity’s challenges. We must act – and act now – to create a better future for us all.” ~António Guterres\nAs the name suggests, UNEA is the body of the United Nations concerned with making decisions for matters related to the environment.\nThe recent session held from 26 February to 1 March 2024, focused on multilateralism to help tackle the triple planetary crisis of climate change, nature and biodiversity loss, and pollution and waste. With the worsening condition of our planet day by day, UNEA works to restore harmony between humanity and nature. Having been created in 2012, UNEA is mandated to ensure the active participation of all relevant stakeholders to guide the future direction of UNEP (UN Environment Programme) and to promote a strong science-policy cooperation.\nThis is Beginner Level, Single Delegate Committee. It requires a scientific approach to tackle the novel environmental challenges.",
    ),
    const CommitteeModel(
      url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736748933/unhcr_qymko2.png",
      name: "United Nations High Commissioner for Refugees\n(UNHCR)",
      delegation: "Single Delegation",
      text: '"Protection and help for refugees should not be a lottery, or a disproportionate burden that falls on a few countries. It is an obligation shared by all of humanity." - António Guterres\nThe UNHCR is a global humanitarian organization committed to safeguarding the rights and well-being of refugees, forcibly displaced communities, and stateless people. It provides lifesaving assistance such as shelter, food, and medical care, while also advocating for their rights to ensure they are protected and their voices are heard.\nBeyond immediate relief, the UNHCR works diligently towards sustainable solutions, including voluntary repatriation, local integration, and resettlement to third countries, enabling refugees to rebuild their lives with dignity and security. This committee is dedicated to upholding the principles of humanitarian protection and advocating for the rights of refugees and displaced persons worldwide.\nIt is a beginner level, single delegate committee which tasks on humanitarian and refugee issues.',
    ),
    const CommitteeModel(
      url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736748860/wha_n7zchq.png",
      name: "World Health Assembly\n(WHA)",
      delegation: "Single Delegation",
      text:'"Health is a human right."-Dr. Tedros Adhanom Ghebreyesus, WHO Director-General The World Health Assembly (WHA) is a scientific committee. Established in 1948 in Geneva, Switzerland, it acts as the decision-making body of the World Health Organization (WHO). All 194 member states of the WHO are represented in the WHA making sure the conference is held annually.\nThe main functions of the World Health Assembly are to determine the policies of the Organization, appoint the Director-General, supervise financial policies, and review and approve the proposed programme budget. The WHA has been pivotal in coordinating international responses to pandemics, including HIV/AIDS, H1N1 influenza, Ebola, and COVID-19. The committee advocates for universal health coverage and works towards achieving health-related Sustainable Development Goals (SDGs).\nThis is a Beginner Level, Single Delegate committee.',
    ),
    const CommitteeModel(
      url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736748900/unw_zat4ma.png",
      name: "UN Women\n(UNWOMEN)",
      delegation: "Double Delegation",
      text: '“We know now that without gender equality and a full role for women in society, in the economy, in governance, we will not be able to achieve the world we hoped for.” – Phumzile Mlambo-Ngcuka, UN Under-Secretary-General and Executive Director, UN Women\nUN Women is the United Nations entity dedicated to gender equality and the empowerment of women. Served by 45 members of the United Nations, UN Women was established to accelerate progress on meeting their needs worldwide.\nIt supports the UN member states as they set global standards for achieving gender equality, and works with governments and civil society to design laws, policies, programmes and services needed to ensure that the standards are effectively implemented and truly benefit women and girls worldwide.\nIt is a Beginner Level, Double Delegate Humanitarian committee.',
    ),
    const CommitteeModel(
      url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736746493/ip_ozifob.png",
      name: "International Press\n(IP)",
      delegation: "Single Delegation",
      text: "As journalist Walter Cronkite once said, 'Journalism is what we need to make democracy work,' emphasizing the essential role of the international press in MUN conferences.\nThe International Press is a team of delegates acting as journalists, reporters, photographers, and editors from various news organizations. They provide comprehensive coverage of the conference by reporting on debates, resolutions, and activities through articles, news segments, and press releases. Their reports ensure that key points and outcomes are accurately documented and disseminated.\nThe press team meticulously documents interactions and events among delegates through photos and videos, enriching the conference's archives. They also facilitate press conferences where delegates can address the media, promoting transparency and open communication.\nIn addition to documenting events, the press team captures the conference's essence with vibrant photos and engaging videos. Their visual storytelling preserves key moments and interactions, creating a compelling narrative of the conference's dynamic atmosphere.\nIt is a Beginner Level, Single Delegate committee.",
    ),
  ];
  static List<CommitteeModel> intermediate=[
    const CommitteeModel(
      url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736748984/undp_fg79ye.png",
      name: "United Nations Development Programme\n(UNDP)",
      delegation: "Double Delegation",
      text: '“Equality means dignity and dignity demands a job and a paycheck that lasts through the week” - Martin Luther King Jr.\nThe United Nations Development Programme (UNDP) is based on the merging of the United Nations Expanded Programme of Technical Assistance, created in 1949, and the United Nations Special Fund, established in 1958. UNDP, as we know it now, was established in 1966 by the General Assembly of the United Nations.\nIts goals are to eradicate poverty, improve democracy and promote global justice. It also aims to achieve the SDGs, promote resilience, and empower people. It supports the growth of democratic governments, inclusive institutions, and the rule of law across international borders. It also encourages change and connects people to resources for a better future. The largest UN agency for development assistance, it receives all of its funding from UN members who voluntarily donate money to it.\nIt is an Intermediate Level, Double Delegate, Humanitarian committee.',
    ),
    const CommitteeModel(
      url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736748983/unodc_ifxl8v.png",
      name: "United Nations Office on Drugs and Crime\n(UNODC)",
      delegation: "Single Delegation",
      text: "“Digitization and Modern Technologies can improve access to justice, better anticipate illicit markets, and reduce corruption” - Ghada Waly, executive director of the UNODC.\nThe United Nations Office on Drugs and Crime, which was established in 1997 headquartered at Vienna, Austria. It has its annual meeting in the month of May, the commission on crime prevention and criminal justice's 33rd session took place at Vienna International Center on May 13 to 17, 2024.\nUNODC provides technical assistance, research and normative support to Member States to help them develop and implement comprehensive, evidence-based solutions to the complex and interconnected threats that they face at the national, regional and global levels. It raises global awareness of the dangers of drug usage and encourages international efforts to combat the manufacturing and trafficking of illicit drugs.\nIt is a Single-Delegate, Intermediate-Level committee and emphasizes on the scientific as well as security issues of the state.",
    ),
    const CommitteeModel(
      url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736749031/unhlpf_kggcvt.png",
      name: "United Nations High Level Forum on Sustainable Development\n(UN HLPF)",
      delegation: "Double Delegation",
      text: "“So, the SDGs aren’t just a list of goals. They carry the hopes, dreams, rights and expectations of people everywhere.” - António Guterres\nThe United Nations High-level Political Forum (HLPF) is a humanitarian committee, central to the follow-up and review of the 2030 Agenda for Sustainable Development and the Sustainable Development Goals (SDGs).\nEstablished in 2013, it operates under the UN General Assembly and ECOSOC, providing a platform for dialogue among member states, UN bodies, and other stakeholders. It meets annually to review SDG progress, conduct Voluntary National Reviews (VNRs), and formulate policy recommendations. It requires an understanding of both global and local sustainable development issues.\nThe HLPF is classified as an Intermediate-Level, Single Delegate committee.",
    ),
    const CommitteeModel(
      url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736749032/specpol_ajiayc.png",
      name: "Special Political and Decolonization Committee\n(SPECPOL)",
      delegation: "Single Delegation",
      text: '"Freedom is indivisible; the chains of one people are the chains of all." -Nelson Mandela\n'+"Special Political and Decolonization Committee, 4th committee of UNGA is the UN’s premier committee on Special Political and Decolonization affairs stands as a cornerstone within the United Nations' framework for global security and a more equitable world. This dynamic forum brings together security expert’s diverse perspectives to tackle the world’s most pressing security challenges.\nSPECPOL deals with peacekeeping missions, decolonization (granting independence to colonies), and space security. Their work is crucial and affects millions as it can bring peace to conflicts, allow colonies to govern themselves, and promote peaceful space exploration. It also addresses problems ranging from space debris to peacekeeping, encouraging discussion and cooperation to create a safe future.\nIt is an Intermediate Level, Single Delegate committee.",
    ),
  ];
  static List<CommitteeModel> advanced=[
    const CommitteeModel(
      url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736746489/c34_ltbl5g.png",
      name: "Special Committee on Peacekeeping Operations\n(C-34)",
      delegation: "Single Delegation",
      text: "The Special Committee on Peacekeeping Operations, also known as the C34, is a subsidiary body of the Fourth Committee of the United Nations General Assembly. Its last session was held from 21st Feb to 15th March 2024.\nIt is known to unite peacekeeping stakeholders, including the security council members, troop and police contributing countries, major financial backers and some other peacekeeping states. This committee is mandated to carry out a comprehensive review of all issues relating to peacekeeping operations.\nThis committee has worked actively on the protection of civilians in a few key areas, including on early warning, civilian harm mitigation, peacekeeper training, and community engagement.\nThis is an Advanced Level, Single Delegate committee and it emphasizes on conserving peace and security within nations."
    ),
    const CommitteeModel(
        url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736746492/hjcc_gkrgih.png",
        name: "Historical Joint Crisis Committee\n(HJCC)",
        delegation: "Double Delegation",
        text: "“When written in Chinese, the word crisis is composed of two characters - one represents danger, and the other represents opportunity.” - John F Kennedy\nA crisis committee is a decision making body that has more power than traditional committees. Whilst the General Assembly recommends and builds consensus, focusing on creating and refining frameworks for the nation's party to align their actions, crisis committees produce action.\nHJCC consists of two parties of representation in separate rooms, deliberating upon a perpetual crisis of historical nature, having conflicting views and policies having aimed to dominate or find settlement in the discourse, the diplomats are open to use tools of diplomacy including but not limited to back-channel discussion; even espionage.\nCrisis can be responded in form of directives or open statements by fellow diplomats, the directives in most cases then not become instrumental in deciding the outcome of committee, Unlike any other committee, delegates become diplomats; In this ultimate test of wits, analysis and strategy decides which ship stays afloat.\nIt is a crisis-based committee which runs as an Advanced Level, Single Delegate committee."
    ),
    const CommitteeModel(
        url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736746490/ceirpp_x7rdy7.png",
        name: "United Nations Committee on the Exercise of the Inalienable Rights of the Palestinian People\n(UNCEIRPP)",
        delegation: "Single Delegation",
        text: "The Committee on the Exercise of the Inalienable Rights of the Palestinian People (CEIRPP) is a committee established by the United Nations General Assembly in 1975. Its primary mandate is to promote the realization of the Palestinian people's inalienable rights, including their right to self-determination, national independence, and sovereignty over their territory.\nIts main roles are advocating for the rights of Palestinians, including their right to self-determination, independence, and sovereignty over their territory and support for peaceful resolution to the Israeli-Palestinian conflict.\nCEIRPP engages internationally with governments, international organizations, and civil society to mobilize support for Palestinian rights and to build consensus on how to address the conflict and reports to the UN General Assembly on developments related to the Palestinian issue and making recommendations and proposals aimed at advancing the rights and interests of Palestinians.\nThis is an Advanced Level, Double Delegate type committee and it focuses attention on the humanitarian well being of the Palestinian people."
    ),
    const CommitteeModel(
        url: "https://res.cloudinary.com/drpqitxvg/image/upload/v1736749078/unsc_i9ia5k.png",
        name: "United Nations Security Council\n(UNSC)",
        delegation: "Single Delegation",
        text: "“Peace is not made by tables or treaties, But in the hearts of men” ~ Herbert Hoover\nThe Security Council is one of the six principal organs of the United Nations established under the United Nations Charter. Its primary responsibility is to maintain international peace and security. The council has 15 members (5 permanent members and 10 non-permanent members), each with one vote. According to the Constitution, all member states must comply with Security Council decisions.\nCalls on both sides of the conflict to resolve the conflict and offer a remedy or solution. Under certain circumstances, the Security Council may impose sanctions and authorize the use of force to maintain or restore international peace and security. The President of the Security Council changes every month.\nThis is an Advanced Level, Single Delegate type committee."
    ),
  ];
  static List<PdfModel> pdflist=[
    const PdfModel(
      name: "DISEC",
      url: "https://drive.google.com/file/d/1b0L7x2YDxviqiRzPGam_wdeRUyU6HcIB/view"
    ),
    const PdfModel(
        name: "ECOSOC",
        url: "https://drive.google.com/file/d/1MCPcnw3BxKiBepudto7PePYtMOPrtE0M/view"
    ),
    const PdfModel(
        name: "HJCC",
        url: "https://drive.google.com/file/d/1tz30CRkrntXFkVnPBzRdYoTdpFmRvu4t/view"
    ),
    const PdfModel(
        name: "IP",
        url: "https://drive.google.com/file/d/1AwiIcpb4TDKrZvSBcL0Dpy6m2hAY3c0K/view"
    ),
    const PdfModel(
        name: "SPECPOL",
        url: "https://drive.google.com/file/d/1IgSnuug2R3gYUGYMDdVrX0N2hDQtGdKV/view"
    ),
    const PdfModel(
        name: "UNCEIRPP",
        url: "https://drive.google.com/file/d/1gmB2k3ZIR6z2GFSMNAMeQYSqc7f8kYrm/view"
    ),
    const PdfModel(
        name: "UNDP",
        url: "https://drive.google.com/file/d/1v9MMji3iq5kCqbzopdcF1JvUNI3QuZdd/view"
    ),
    const PdfModel(
        name: "UNEA",
        url: "https://drive.google.com/file/d/1qnRX44Q2rbUmKazQHFijPBpW_JiCcLKu/view"
    ),
    const PdfModel(
        name: "UNHCR",
        url: "https://drive.google.com/file/d/1qunf6QmlPWMfSCioFe2r4lgy3CY1yHf8/view"
    ),
    const PdfModel(
        name: "UNHLPF",
        url: "https://drive.google.com/file/d/12ULtiwTb2CXbKNxpZJcz4jnvoiAPVasT/view"
    ),
    const PdfModel(
        name: "UNODC",
        url: "https://drive.google.com/file/d/1a33fdk-wpMSGWPa1TDHCDSqBL5cTPubH/view"
    ),
    const PdfModel(
        name: "UNSC",
        url: "https://drive.google.com/file/d/1F6r-UB5FVAwvOO5fII7HeykbEI9r-DMk/view"
    ),
    const PdfModel(
        name: "UNWOMEN",
        url: "https://drive.google.com/file/d/1KueyeoQs6qQZAqQZ1erkDJORj9TdNjZD/view"
    ),
    const PdfModel(
        name: "WHA",
        url: "https://drive.google.com/file/d/1GavJSRrbWLpvzVFYdL7uWclXcp6QM8w4/view"
    ),
  ];
}