import 'package:flutter/material.dart';
import 'package:flutter_keyboard_ecommerce/utils/extensions.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';

class KeyboardDetailsScreen extends StatelessWidget {
  const KeyboardDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top + 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //stack
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Transform.rotate(
                        angle: math.pi * 0.5,
                        child: Image.asset(
                          "assets/images/keyboard_mk.jpg",
                          height: 350,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShaderMask(
                            blendMode: BlendMode.srcIn,
                            shaderCallback: (bounds) {
                              var gradient = const LinearGradient(
                                colors: [
                                  Colors.white,
                                  Colors.transparent,
                                ],
                              );
                              return gradient.createShader(
                                Rect.fromLTWH(
                                    0, 0, bounds.width + 350, bounds.height),
                              );
                            },
                            child: Text(
                              "IQUNIX",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 70,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "ZX75 Gravity",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 23,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Wave",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 150,
                      left: 5,
                      right: 5,
                      child: SizedBox(
                        height: 80,
                        width: size.width,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              ),
                              child: const Icon(Icons.info_outline),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "HelloIqunix",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.grey[900],
                              child: Text(
                                "10K",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.grey[900],
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    DraggableScrollableSheet(
                      initialChildSize: 0.2,
                      minChildSize: 0.19,
                      maxChildSize: 1,
                      expand: true,
                      snap: true,
                      builder: (context, scrollController) {
                        return Stack(
                          children: [
                            Container(
                              width: size.width,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                              ),
                              padding: const EdgeInsets.all(16.0),
                              child: ListView(
                                controller: scrollController,
                                padding: EdgeInsets.zero,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //badge
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.yellow.shade600,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 15,
                                          vertical: 5,
                                        ),
                                        child: Text(
                                          "IQUNIX",
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      //title
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "ZX75 Gravity Wave",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 23,
                                            ),
                                          ),
                                          Text(
                                            "\$195.00",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      15.toHeightSpace(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Descriptions",
                                            style: GoogleFonts.poppins(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "view all",
                                            style: GoogleFonts.poppins(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      15.toHeightSpace(),
                                      SizedBox(
                                        width: size.width,
                                        height: 200,
                                        child: ListView.builder(
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 10,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              width: 200,
                                              margin: const EdgeInsets.all(5.0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(9),
                                                image: const DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/keyboard.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Text("hi"),
                                            );
                                          },
                                        ),
                                      ),
                                      30.toHeightSpace(),
                                      Text(
                                        "Detail",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey[200]!,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              padding: const EdgeInsets.all(12),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[400],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 5,
                                                      vertical: 5,
                                                    ),
                                                    child: const Icon(
                                                      Icons.keyboard,
                                                    ),
                                                  ),
                                                  5.toWidthSpace(),
                                                  Text(
                                                    "75% Layout",
                                                    style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            10.toWidthSpace(),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey[200]!,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              padding: const EdgeInsets.all(12),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[400],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 5,
                                                      vertical: 5,
                                                    ),
                                                    child: const Icon(
                                                      Icons
                                                          .compare_arrows_sharp,
                                                    ),
                                                  ),
                                                  5.toWidthSpace(),
                                                  Text(
                                                    "Hot-Swap",
                                                    style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            10.toWidthSpace(),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey[200]!,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              padding: const EdgeInsets.all(12),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[400],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        20,
                                                      ),
                                                    ),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 5,
                                                      vertical: 5,
                                                    ),
                                                    child: const Icon(
                                                      Icons.monitor,
                                                    ),
                                                  ),
                                                  5.toWidthSpace(),
                                                  Text(
                                                    "PBT",
                                                    style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      10.toHeightSpace(),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey[200]!,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              padding: const EdgeInsets.all(12),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[400],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 5,
                                                      vertical: 5,
                                                    ),
                                                    child: const Icon(
                                                      Icons.wifi_tethering,
                                                    ),
                                                  ),
                                                  5.toWidthSpace(),
                                                  Text(
                                                    "2.4 Ghz",
                                                    style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            10.toWidthSpace(),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey[200]!,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              padding: const EdgeInsets.all(12),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[400],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 5,
                                                      vertical: 5,
                                                    ),
                                                    child: const Icon(
                                                      Icons.bluetooth,
                                                    ),
                                                  ),
                                                  5.toWidthSpace(),
                                                  Text(
                                                    "Bluetooth 5.1",
                                                    style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            10.toWidthSpace(),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey[200]!,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              padding: const EdgeInsets.all(12),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[400],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 5,
                                                      vertical: 5,
                                                    ),
                                                    child: const Icon(
                                                      Icons
                                                          .battery_charging_full_rounded,
                                                    ),
                                                  ),
                                                  5.toWidthSpace(),
                                                  Text(
                                                    "600mAH",
                                                    style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      30.toHeightSpace(),
                                      Text(
                                        "Switch",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      10.toHeightSpace(),
                                      Wrap(
                                        spacing: 2,
                                        runSpacing: 8,
                                        children: [
                                          Badge(
                                            backgroundColor: Colors.grey[800],
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            largeSize: 30,
                                            smallSize: 20,
                                            label: Text("GoldPink"),
                                          ),
                                          Badge(
                                            backgroundColor: Colors.grey[600],
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            largeSize: 30,
                                            smallSize: 20,
                                            label: Text("GoldPink"),
                                          ),
                                          Badge(
                                            backgroundColor: Colors.grey[600],
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            largeSize: 30,
                                            smallSize: 20,
                                            label: Text("GoldPink"),
                                          ),
                                          Badge(
                                            backgroundColor: Colors.grey[600],
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            largeSize: 30,
                                            smallSize: 20,
                                            label: Text("GoldPink"),
                                          ),
                                          Badge(
                                            backgroundColor: Colors.grey[600],
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            largeSize: 30,
                                            smallSize: 20,
                                            label: Text("GoldPink"),
                                          ),
                                          Badge(
                                            backgroundColor: Colors.grey[600],
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            largeSize: 30,
                                            smallSize: 20,
                                            label: Text("GoldPink"),
                                          ),
                                          Badge(
                                            backgroundColor: Colors.grey[600],
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            largeSize: 30,
                                            smallSize: 20,
                                            label: Text("GoldPink"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: -15,
                              left: size.width * 0.45,
                              child: Container(
                                width: 50,
                                height: 29,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                  ),
                                ),
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "-",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              //Draggable bottom sheet
            ],
          ),
        ),
      ),
    );
  }
}
