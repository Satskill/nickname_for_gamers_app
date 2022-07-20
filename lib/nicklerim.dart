import 'package:flutter/material.dart';
import 'package:nickname_for_gamers_app/data.dart';
import 'package:nickname_for_gamers_app/nick_tamamla.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*class nicklerim extends StatelessWidget {
  nicklerim({Key? key}) : super(key: key);
  static Data fontlarim = Data('fonts');
  static String? isimim;
  static String? font;

  Future<void> okuma() async {
    final prefs = await SharedPreferences.getInstance();
    setState((){

    isimim = prefs.getString('isimim') ?? 'deneme';
    font = prefs.getString('fontum') ?? 'Fat';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      isimim!,
      style: TextStyle(fontFamily: font),
    );
  }
}*/

class nicklerim extends StatefulWidget {
  nicklerim({Key? key}) : super(key: key);
  static Data fontlarim = Data('fonts');
  static String isimim = 'deneme';
  static String font = 'Fat';

  @override
  State<nicklerim> createState() => _nicklerimState();
}

class _nicklerimState extends State<nicklerim> {
  /*Future<void> okuma() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      nicklerim.isimim = prefs.getString('isimim') ?? 'deneme';
      nicklerim.font = prefs.getString('fontum') ?? 'Fat';
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SelectableText(
          nick_tamamla.isim.toString(),
          style: TextStyle(fontFamily: nick_tamamla.fontum, fontSize: 30),
        ),
      ),
    );
  }
}
