import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nickname_for_gamers_app/nicklerim.dart';
import 'package:nickname_for_gamers_app/rotalar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.rotalarim,
      //title: 'APP',
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anasayfa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 240,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/nickolustur');
                },
                child: Text('İsim Üret'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrange),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(width: 2, color: Colors.amber)))),
              ),
            ),
            SizedBox(
              width: 240,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/nicklerim');
                }, //flutter emulator --launch Pixel_2_API_30
                child: Text('İsimlerim'),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide()))),
              ),
            ),
            /* Container(
                child: Image.asset(''),
              ),*/
            /* SizedBox(
              width: 240,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/nicklerim');
                }, //flutter emulator --launch Pixel_2_API_30
                child: Text('Rastgele'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide()))),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
