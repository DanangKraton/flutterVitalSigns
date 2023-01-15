import 'package:flutter/material.dart';
import 'package:eurekalife/pages/bp_graph.dart';
import 'package:eurekalife/pages/bth_before_scan.dart';
import 'package:eurekalife/pages/heart_graph.dart';
import 'package:eurekalife/pages/oksi_graph.dart';
import 'package:eurekalife/pages/temp_graph.dart';
import 'package:eurekalife/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String bp_data = '--/--';
  String heart_data = '--';
  String oksi_data = '--';
  String temp_data = '--';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: back_grey_col,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/img_back.png'),
                alignment: const Alignment(0.0, -1.0),
              )),
            ),
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    width: 95,
                    height: 95,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/bear_logo_pic.png'))),
                  ),
                  Text(
                    'Eureka Life',
                    style: white_text_sty.copyWith(
                        fontSize: 40, fontWeight: regular),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const bp_graph(),
                            ),
                          );
                        }),
                        child: Container(
                          margin: EdgeInsets.only(left: 30),
                          padding: EdgeInsets.only(
                              top: 10, left: 30, right: 30, bottom: 20),
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            color: white_col,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 5,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Column(children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/bp.png'))),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Blood Pressure',
                              style: dark_blue_text_sty.copyWith(
                                  fontSize: 20, fontWeight: medium),
                            ),
                            Text(
                              '$bp_data',
                              style: red_text_sty.copyWith(
                                  fontSize: 40, fontWeight: regular),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                Text(
                                  'mmhg',
                                  style: red_text_sty.copyWith(
                                      fontSize: 15, fontWeight: regular),
                                ),
                              ],
                            )
                          ]),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const heart_graph(),
                            ),
                          );
                        }),
                        child: Container(
                          margin: EdgeInsets.only(right: 30),
                          padding: EdgeInsets.only(
                              top: 10, left: 30, right: 30, bottom: 20),
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            color: white_col,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 5,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Column(children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/heart_pic.png'))),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Heart Rate',
                              style: dark_blue_text_sty.copyWith(
                                  fontSize: 20, fontWeight: medium),
                            ),
                            Text(
                              '$heart_data',
                              style: yellow_text_sty.copyWith(
                                  fontSize: 40, fontWeight: regular),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                Text(
                                  'bpm',
                                  style: yellow_text_sty.copyWith(
                                      fontSize: 15, fontWeight: regular),
                                ),
                              ],
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const oksi_graph(),
                            ),
                          );
                        }),
                        child: Container(
                          margin: EdgeInsets.only(left: 30),
                          padding: EdgeInsets.only(
                              top: 10, left: 30, right: 30, bottom: 20),
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            color: white_col,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 5,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Column(children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/oksi_pic.png'))),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Blood Oxygen',
                              style: dark_blue_text_sty.copyWith(
                                  fontSize: 20, fontWeight: medium),
                            ),
                            Text(
                              '$oksi_data',
                              style: green_text_sty.copyWith(
                                  fontSize: 40, fontWeight: regular),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                Text(
                                  '%',
                                  style: green_text_sty.copyWith(
                                      fontSize: 15, fontWeight: regular),
                                ),
                              ],
                            )
                          ]),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const temp_graph(),
                            ),
                          );
                        }),
                        child: Container(
                          margin: EdgeInsets.only(right: 30),
                          padding: EdgeInsets.only(
                              top: 10, left: 30, right: 30, bottom: 20),
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            color: white_col,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 5,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Column(children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/temp_pic.png'))),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Temperature',
                              style: dark_blue_text_sty.copyWith(
                                  fontSize: 20, fontWeight: medium),
                            ),
                            // SizedBox(
                            //   height: 1,
                            // ),
                            Text(
                              '$temp_data',
                              style: light_blue_text_sty.copyWith(
                                  fontSize: 40, fontWeight: regular),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                Text(
                                  'Celcius',
                                  style: light_blue_text_sty.copyWith(
                                      fontSize: 15, fontWeight: regular),
                                ),
                              ],
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const bth_before_scan(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: dark_blue_col,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text(
                        'Connect',
                        style: white_text_sty.copyWith(
                            fontSize: 30, fontWeight: regular),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
