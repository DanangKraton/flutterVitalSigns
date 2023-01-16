import 'package:eurekalife/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class hehehe extends StatefulWidget {
  const hehehe({super.key});

  @override
  State<hehehe> createState() => _heheheState();
}

class _heheheState extends State<hehehe> {
  // BluetoothConnection bth = awa

  String bth = '...';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              width: 200,
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
            Text(
              '$bth',
              style: green_text_sty.copyWith(fontSize: 40, fontWeight: regular),
            ),
          ],
        ),
      ),
    );
  }
}
