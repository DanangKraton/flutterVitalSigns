import 'package:flutter/material.dart';
import 'package:eurekalife/pages/bth_scan.dart';
import 'package:eurekalife/pages/home_page.dart';
import 'package:eurekalife/pages/try.dart';
import 'package:eurekalife/theme.dart';

class bth_before_scan extends StatelessWidget {
  const bth_before_scan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white_col,
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
                )
              ],
            ),
            const SizedBox(
              height: 59,
            ),
            Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                  color: back_grey_col,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/bluetooth_pic.png'),
                      scale: 2.5)),
              // child: Image,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 350,
              height: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: light_blue_col,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                '1. Turn on bluetooth on this device',
                textAlign: TextAlign.center,
                style:
                    white_text_sty.copyWith(fontSize: 20, fontWeight: regular),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 350,
              height: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: light_blue_col,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                '2. Turn on the smart watch',
                textAlign: TextAlign.center,
                style:
                    white_text_sty.copyWith(fontSize: 20, fontWeight: regular),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const bth_scan(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                    backgroundColor: dark_blue_col,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Text(
                  'Search for Devices',
                  style: white_text_sty.copyWith(
                      fontSize: 30, fontWeight: regular),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
