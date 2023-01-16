import 'package:eurekalife/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class muehehe extends StatefulWidget {
  const muehehe({super.key});

  @override
  State<muehehe> createState() => _mueheheState();
}

class _mueheheState extends State<muehehe> {
  String tempel = 'tempel';
  String resp_oksi = 'resp_oksi';
  String resp_heat = 'resp_heat';
  String resp_heart = 'resp_heart';
  String resp_bp = 'resp_bp';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    IO.Socket socket = IO.io('http://localhost:5000');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              'tempel: $tempel',
              style: red_text_sty.copyWith(fontSize: 40, fontWeight: regular),
            ),
            Text(
              'oksi: $resp_oksi',
              style: red_text_sty.copyWith(fontSize: 40, fontWeight: regular),
            ),
            Text(
              'heat: $resp_heat',
              style: red_text_sty.copyWith(fontSize: 40, fontWeight: regular),
            ),
            Text(
              'heart: $resp_heart',
              style: red_text_sty.copyWith(fontSize: 40, fontWeight: regular),
            ),
            Text(
              'bp: $resp_bp',
              style: red_text_sty.copyWith(fontSize: 40, fontWeight: regular),
            ),
          ],
        ),
      ),
    );
  }
}
