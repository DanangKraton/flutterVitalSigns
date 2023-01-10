import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:eurekalife/pages/bth_before_scan.dart';
import 'package:eurekalife/pages/home_page.dart';
import 'package:eurekalife/theme.dart';

class bth_after_scan extends StatelessWidget {
  const bth_after_scan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back_grey_col,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/back_pic.png'))),
                  ),
                ),
                const Spacer(),
                Text(
                  'Add New Device',
                  style: dark_blue_text_sty.copyWith(
                      fontSize: 30, fontWeight: medium),
                ),
                const Spacer(),
                Container(
                  width: 80,
                  height: 40,
                ),
                // SizedBox(
                //   height: 30,
                // ),
                // Container(
                //   width: 300,
                //   height: 400,
                //   padding: EdgeInsets.all(30),
                //   margin: EdgeInsets.all(25),
                // )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 350,
              height: 500,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
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
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      color: dark_blue_col,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      'Search result',
                      style: white_text_sty.copyWith(
                          fontSize: 25, fontWeight: regular),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              children: [
                Container(
                  width: 40,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const bth_before_scan(),
                        ),
                      );
                    },
                    child: Text(
                      'New Search',
                      style: grey_text_sty.copyWith(
                          fontSize: 25, fontWeight: regular),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 100,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const bth_before_scan(),
                      //   ),
                      // );
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
                Container(
                  width: 40,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
