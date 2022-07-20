import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nickname_for_gamers_app/data.dart';
import 'package:nickname_for_gamers_app/nick_olustur.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*class nick_tamamla extends StatelessWidget {
  const nick_tamamla({required this.isim, Key? key}) : super(key: key);
  final String isim;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(isim),
      ),
    );
  }
}*/

/*class nick_tamamla extends StatefulWidget {
  nick_tamamla({required this.isim, Key? key}) : super(key: key);
  final String isim;

  static String gelenisim = '';

  @override
  State<nick_tamamla> createState() => _nick_tamamlaState();
}

Tanimlama(){
  nick_tamamla.gelenisim = nick_tamamla.isim;
}

class _nick_tamamlaState extends State<nick_tamamla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(nick_tamamla.gelenisim),
      ),
    );
  }
}*/

class nick_tamamla extends StatefulWidget {
  nick_tamamla({String? isim, Key? key}) : super(key: key);
  static String? isim;
  static Data fontlarim = Data('fonts');
  static Data yanlar = Data('yanlar');
  static String fontum = '';

  @override
  State<nick_tamamla> createState() => _TablarimState();
}

class _TablarimState extends State<nick_tamamla>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  GlobalKey _textim = GlobalKey();
  var giris = nick_olustur.giris;
  static String isim = nick_olustur.giris.text;
  String sagisim = '';
  String solisim = '';
  String sonhal = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: tabbarim(),
        title: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.orange,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          controller: giris,
          readOnly: true,
          key: _textim,
          onChanged: (String deger) {
            giris.text = deger;
          },
        ),
      ),
      body: TabBarView(controller: tabController, children: <Widget>[
        ListView.builder(
          itemCount: 7,
          itemBuilder: ((context, index) {
            var liste = nick_tamamla.yanlar.geridonus()[index];
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(4),
              child: ListTile(
                onTap: () {
                  if (solisim == '' || solisim != liste) {
                    giris.text = liste + giris.text;
                    solisim = liste;
                    sonhal = giris.text;
                  }
                },
                title: Text(
                  liste,
                ),
                isThreeLine: false,
                trailing: Icon(Icons.arrow_right_rounded, size: 40),
              ),
            );
          }),
        ),
        ListView.builder(
          itemCount: 11,
          itemBuilder: ((context, index) {
            var liste = nick_tamamla.fontlarim.geridonus()[index];
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(4),
              child: ListTile(
                onTap: () async {
                  nick_tamamla.isim = giris.text;
                  nick_tamamla.fontum = liste.toString();
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                title: Text(
                  giris.text,
                  style: TextStyle(fontFamily: liste),
                ),
                isThreeLine: false,
                trailing: Icon(Icons.arrow_right_rounded, size: 40),
              ),
            );
          }),
        ),
        ListView.builder(
          itemCount: 7,
          itemBuilder: ((context, index) {
            var liste = nick_tamamla.yanlar.geridonus()[index];
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(4),
              child: ListTile(
                onTap: () {
                  if (sagisim == '' || sagisim != liste) {
                    giris.text = giris.text + liste;
                    sagisim = liste;
                    sonhal = giris.text;
                  }
                },
                title: Text(
                  liste,
                ),
                isThreeLine: false,
                trailing: Icon(Icons.arrow_right_rounded, size: 40),
              ),
            );
          }),
        ),
      ]),
    );
  }

  TabBar tabbarim() {
    return TabBar(controller: tabController, tabs: const [
      Tab(
        text: 'Sol',
      ),
      Tab(
        text: 'Style',
      ),
      Tab(
        text: 'Sağ',
      ),
    ]);
  }
}
