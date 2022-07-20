import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nickname_for_gamers_app/data.dart';
import 'package:nickname_for_gamers_app/hazir_isimler.dart';
import 'package:nickname_for_gamers_app/main.dart';
import 'package:nickname_for_gamers_app/nick_olustur.dart';
import 'package:nickname_for_gamers_app/nick_tamamla.dart';
import 'package:nickname_for_gamers_app/nicklerim.dart';

class RouteGenerator {
  static Route<dynamic> _routefunction(Widget sayfam, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
          builder: (context) => sayfam, settings: settings);
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          builder: (context) => sayfam, settings: settings);
    } else {
      return CupertinoPageRoute(
          builder: (context) => sayfam, settings: settings);
    }
  }

  static Route<dynamic>? rotalarim(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _routefunction(AnaSayfa(), settings);

      case '/nickolustur':
        return _routefunction(nick_olustur(), settings);

      case '/hazir_isimler':
        var listem = settings.arguments as Data;
        return _routefunction(hazir_isimler(turum: listem), settings);

      case '/nick_tamamla':
        var isim = settings.arguments as String;
        return _routefunction(nick_tamamla(isim: isim), settings);

      case '/nicklerim':
        return _routefunction(nicklerim(), settings);

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: Text('Hata'),
                  ),
                  body: Center(
                    child: Text('Sayfa Bulunamadı'),
                  ),
                ));
    }
  }
}
