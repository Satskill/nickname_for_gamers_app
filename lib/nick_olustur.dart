//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:nickname_for_gamers_app/data.dart';
import 'package:nickname_for_gamers_app/hazir_isimler.dart';

class nick_olustur extends StatelessWidget {
  const nick_olustur({Key? key}) : super(key: key);

  static String isimim = '';

  static var giris = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nickolustur'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: TextField(
                  controller: giris,
                  onChanged: (String deger) {
                    isimim = deger;
                    //giris.text = isimim;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Container(
                  padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepOrange),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                        width: 2, color: Colors.amber)))),
                    onPressed: () {
                      isimim = giris.text;
                      Navigator.pushNamed(context, '/nick_tamamla',
                          arguments: isimim);
                    },
                    child: Text('Devam et'),
                  ),
                ),
              ),
            ]),
          ),
          SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            delegate: SliverChildListDelegate(GridV(context)),
          )
        ],
      ),
    );
  }
}

List<Widget> GridV(BuildContext context) {
  return [
    containerim(context, Data('popular_list'), 'Popular'),
    containerim(context, Data('legendary_list'), 'Legendary'),
    containerim(context, Data('badass_list'), 'Badass'),
    containerim(context, Data('squad_list'), 'Squad'),
    containerim(context, Data('girl_list'), 'Girl'),
    containerim(context, Data('dinosaur_list'), 'Dinasour'),
    containerim(context, Data('turkish_list'), 'Turkish'),
    containerim(context, Data('urban_list'), 'Urban'),
    containerim(context, Data('mythology_list'), 'Myth'),
  ];
}

containerim(BuildContext context, Data listem, String tex) {
  return Container(
    child: SizedBox(
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(width: 2, color: Colors.amber)))),
        onPressed: () async {
          var liste = listem;
          var giris = await Navigator.pushNamed(context, '/hazir_isimler',
              arguments: liste);
          nick_olustur.giris.text = await giris.toString();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.account_box),
            Text(tex),
          ],
        ),
      ),
    ),
  );
}
