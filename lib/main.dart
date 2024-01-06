import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(
                0xfffcd227,
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Events",
                              style: TextStyle(
                                color: Color(
                                  0xffad8f1b,
                                ),
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                height: 0.9,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text("All Events",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  height: 0.7,
                                )),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 8,
                                right: 6,
                              ),
                              height: 36,
                              width: 36,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(3),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    "https://w7.pngwing.com/pngs/658/75/png-transparent-team-fortress-2-loadout-minecraft-valve-corporation-video-game-demoman-video-game-arm-weapon-thumbnail.png",
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                height: 18,
                                width: 18,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(
                                    0xffff343b,
                                  ),
                                ),
                                child: const Text(
                                  "4",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        _buildCard(),
                        const SizedBox(
                          width: 20,
                        ),
                        _buildCard(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        _buildCard(),
                        const SizedBox(
                          width: 20,
                        ),
                        _buildCard(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      "Calendar",
                      style: TextStyle(
                        color: Color(
                          0xff272726,
                        ),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 192,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    16,
                  ),
                  topRight: Radius.circular(
                    16,
                  ),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(
                    20,
                  ),
                  topRight: Radius.circular(
                    20,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildCalenderDates(
                          "12",
                          "Wed",
                          showBgColor: true,
                          showBottomCircle: true,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        _buildCalenderDates(
                          "13",
                          "Thu",
                          showBgColor: true,
                          showBottomCircle: false,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        _buildCalenderDates(
                          "14",
                          "Fri",
                          showBottomCircle: true,
                          showBgColor: false,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        _buildCalenderDates(
                          "15",
                          "Sat",
                          showBgColor: true,
                          showBottomCircle: true,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        _buildCalenderDates(
                          "16",
                          "Sun",
                          showBgColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        color: Color(
                          0xfff3f3f3,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.more_horiz,
                          color: Color(
                            0xff111111,
                          ),
                          size: 24,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Switch to monthly view",
                          style: TextStyle(
                            color: Color(
                              0xffb9bbc1,
                            ),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            8,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(
                0.05,
              ),
              blurRadius: 4,
              spreadRadius: 4,
            ),
          ],
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 48,
            ),
            Container(
              height: 68,
              width: 68,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.icon-icons.com/icons2/2643/PNG/512/male_man_people_person_avatar_white_tone_icon_159363.png",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              height: 2.5,
              width: 20,
              decoration: BoxDecoration(
                color: const Color(0xffa7aeb8),
                borderRadius: BorderRadius.circular(
                  4,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "12 July",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 18,
                letterSpacing: 0,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              "Events Name",
              style: TextStyle(
                color: Color(
                  0xffbec0c7,
                ),
                letterSpacing: 0,
                fontWeight: FontWeight.w600,
                fontSize: 14,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 36,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCalenderDates(
    String dateNumber,
    String dateDay, {
    bool showBgColor = false,
    bool showBottomCircle = false,
  }) {
    return Column(
      children: [
        Container(
          width: 50,
          decoration: BoxDecoration(
            gradient: !showBgColor
                ? const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(
                        0xffffeeea,
                      ),
                      Colors.white,
                    ],
                  )
                : null,
          ),
          child: Column(
            children: [
              !showBgColor
                  ? Container(
                      height: 8,
                      width: 50,
                      color: const Color(
                        0xfffd5228,
                      ),
                    )
                  : Container(
                      height: 8,
                      width: 40,
                      color: Colors.transparent,
                    ),
              const SizedBox(
                height: 18,
              ),
              Text(
                dateNumber,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  height: 0.99,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
        Text(
          dateDay,
          style: const TextStyle(
            color: Color(
              0xffbbbfc6,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        showBottomCircle
            ? Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  color: Color(
                    0xff75b0fe,
                  ),
                  shape: BoxShape.circle,
                ),
              )
            : const SizedBox(
                height: 8,
                width: 8,
              ),
      ],
    );
  }
}
