import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

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
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Events",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 38,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0,
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          size: 28,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      "Selected for you",
                      style: TextStyle(
                        color: Color(
                          0xff272726,
                        ),
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            18,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                0.2,
                              ),
                              offset: const Offset(
                                0,
                                8,
                              ),
                              spreadRadius: 1,
                              blurRadius: 10,
                            ),
                          ]),
                      child: Stack(
                        children: [
                          _buildBgImage(context),
                          _buildWhiteOverlay(context),
                          _buildArrowOverlay(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildBottomSection(context),
        ],
      ),
    );
  }

  Widget _buildBottomSection(BuildContext context) {
    return Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 280,
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
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Vegan snacks",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Food",
                      style: TextStyle(
                        color: Color(
                          0xffbcbcbc,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      "30 June 2019",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        letterSpacing: 0,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Lexington St. London",
                      style: TextStyle(
                        color: const Color(0xffc0c0c0).withOpacity(0.7),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "\$75",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              _buildCircleImage(),
                              const SizedBox(
                                width: 6,
                              ),
                              _buildCircleImage(),
                              const SizedBox(
                                width: 6,
                              ),
                              _buildCircleImage(),
                              const SizedBox(
                                width: 6,
                              ),
                              _buildCircleImage(),
                              const SizedBox(
                                width: 6,
                              ),
                              _buildCircleNumber(),
                            ],
                          ),
                          const Spacer(),
                    _buildBookButton(),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookButton() {
    return Container(
      padding: const EdgeInsets.only(
        right: 1,
      ),
      height: 60,
      width: 65,
      decoration: BoxDecoration(
        color: const Color(
          0xfffcd128,
        ),
        borderRadius: BorderRadius.circular(
          12,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(
              0xfffcd128,
            ).withOpacity(.4),
            blurRadius: 10,
            spreadRadius: 4,
            offset: const Offset(
              0,
              6,
            ),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: const Text(
        "Book",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          letterSpacing: 0,
          height: 0,
        ),
      ),
    );
  }

  Widget _buildArrowOverlay(BuildContext context) {
    return Positioned(
      bottom: 16,
      right: MediaQuery.of(context).size.width * .16,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: const Color(
                0xfffcd225,
              ).withOpacity(
                0.4,
              ),
              blurRadius: 2,
              spreadRadius: 2,
            ),
          ],
          color: const Color(
            0xfffcd225,
          ),
        ),
        alignment: Alignment.center,
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white.withOpacity(0.9),
          size: 60,
        ),
      ),
    );
  }

  Widget _buildBgImage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        height: 380,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            18,
          ),
          child: Image.network(
              "https://www.foodandwine.com/thmb/OH220PwOZfcTiwuJzkvLANWHw1w=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/egg-bhurjee-FT-RECIPE0521-f9573d8c81bb4c9597a9621c0ac064ae.jpg",
              fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget _buildWhiteOverlay(BuildContext context) {
    return Positioned(
      left: 15,
      bottom: 0,
      child: Container(
        height: 92,
        width: MediaQuery.of(context).size.width * .65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
        padding: const EdgeInsets.only(
          left: 18,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Breakfast",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w800,
                letterSpacing: 0,
                height: 0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "12 Workshops",
              style: TextStyle(
                  color: Color(
                    0xffcbccd2,
                  ),
                  fontSize: 11,
                  letterSpacing: 0,
                  height: 0,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircleImage() {
    return Container(
      margin: const EdgeInsets.only(
        top: 8,
        right: 6,
      ),
      height: 34,
      width: 34,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(
            0xfffcd128,
          ).withOpacity(0.6),
        ),
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: const Padding(
        padding: EdgeInsets.all(1),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            "https://w7.pngwing.com/pngs/658/75/png-transparent-team-fortress-2-loadout-minecraft-valve-corporation-video-game-demoman-video-game-arm-weapon-thumbnail.png",
          ),
        ),
      ),
    );
  }

  Widget _buildCircleNumber() {
    return Container(
      margin: const EdgeInsets.only(
        top: 8,
        right: 6,
      ),
      height: 34,
      width: 34,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(
            0xfffcd128,
          ).withOpacity(0.6),
        ),
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: const Padding(
        padding: EdgeInsets.all(1),
        child: Text(
          "+15",
          style: TextStyle(
            color: Color(
              0xffbbbbbb,
            ),
            fontSize: 12,
            fontWeight: FontWeight.w600,
            letterSpacing: 0,
            height: 0,
          ),
        ),
      ),
    );
  }
}
