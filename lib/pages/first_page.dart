import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lesson_34/widgets.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: height * 0.42,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://img.freepik.com/free-vector/people-in-the-autumn-park-illustration_23-2148620793.jpg?w=996&t=st=1715589053~exp=1715589653~hmac=3ab56954a5d0c8442e0146dc43fee6360d05a57efbcadd6cc829ffce2eb92598"),
                      fit: BoxFit.fill),
                ),
              ),
              Positioned(
                top: height * 0.37,
                child: Container(
                  padding: const EdgeInsets.only(top: 35),
                  width: width,
                  height: height * 0.20,
                  decoration: const BoxDecoration(
                    color: Color(0xffE17855),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Autumn Day",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Hello Jack",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                child: Image.network(
                                  "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSzwKyyA4-7mFBQf41P4sffvjRB03F7k6JEUveOBLNb6_e6Xmt5",
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                              const Gap(10),
                              const Text(
                                ":",
                                style: TextStyle(
                                    color: Color(0xffFAEBC8), fontSize: 45),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: height * 0.37 + height * 0.15,
                child: Container(
                  padding: const EdgeInsets.only(left: 40, top: 50),
                  width: width,
                  height: height - height * 0.15,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (int i = 0; i < 4; i++) GetIcons(i: i),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: "Day ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                            TextSpan(
                              text: "Schedule",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 35),
                            ),
                          ]),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Expanded(
                          child: Wrap(
                            spacing: 10,
                            children: [
                              for (int i = 0; i < 4; i++)
                                GetSchedules(
                                  i: i,
                                  boolean: true,
                                  imagesize: 100,
                                )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GetIcons extends StatelessWidget {
  List icons = [
    "https://cdn-icons-png.freepik.com/256/2046/2046243.png?uid=R147006331&ga=GA1.1.1582423724.1714451876&semt=ais_hybrid",
    "https://cdn-icons-png.freepik.com/256/10382/10382680.png?uid=R147006331&ga=GA1.1.1582423724.1714451876&semt=ais_hybrid",
    "https://cdn-icons-png.freepik.com/256/12065/12065688.png?uid=R147006331&ga=GA1.1.1582423724.1714451876&semt=ais_hybrid",
    "https://cdn-icons-png.freepik.com/256/6439/6439226.png?uid=R147006331&ga=GA1.1.1582423724.1714451876&semt=ais_hybrid"
  ];
  List backcolor = [
    const Color(0xffFAEBC8),
    const Color(0xffF0A591),
    const Color(0xffD2E6E6),
    const Color(0xffFACDAF),
  ];
  List iconcolor = [
    const Color(0xffE17855),
    const Color(0xffFAEBC8),
    const Color(0xffAAAA78),
    const Color(0xffDC8769),
  ];
  int i;

  GetIcons({required this.i, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backcolor[i],
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Image.network(
          icons[i],
          color: iconcolor[i],
          cacheHeight: 45,
        ),
      ),
    );
  }
}
