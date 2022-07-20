import 'package:flutter/material.dart';
import 'data.dart';

class hazir_isimler extends StatelessWidget {
  final Data turum;
  const hazir_isimler({required this.turum, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          primary: true,
        ),
        body: ListView.builder(
          itemCount: turum.geridonus().length,
          itemBuilder: ((context, index) {
            var liste = turum.geridonus()[index];
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(4),
              child: ListTile(
                onTap: () {
                  Navigator.pop(context, liste);
                },
                title: Text(liste),
                isThreeLine: false,
                trailing: Icon(Icons.arrow_right_rounded, size: 40),
              ),
            );
          }),
        ));
  }
}
