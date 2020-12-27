import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tasarim/drawer_menu.dart';
import 'package:tasarim/ekranlar/anasayfa.dart';
import 'package:tasarim/ekranlar/aramasayfasi.dart';
import 'package:tasarim/kisisel_font.dart';
import 'package:tasarim/page_view.dart';

import 'ekranlar/tab_ornek.dart';

// google.font.  Declare the font in the pubspec.
//theme:themedata(fontfamily) ile uygulamanın genel yazı tipini ayarlarsın textstyle ile ayarlamadığın her yapıda uygulanır
// drawer menü oluşturur
// inkwell onTap özelliği için widgeti sarmalar tıklama efekti verir
// Bottom Navigation Bar ekranın altında sabit duran geçiş butonları
void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "ElYazisi"),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int secilenMenuItemi = 0;
  List<Widget> tumSayfalar;
  Anasayfa anasayfa;
  AramaSayfasi aramaSayfasi;
  PageViewOrnek pageViewOrnek;

  var keyAnasayfa = PageStorageKey("key_anasayfa");
  var keyArama = PageStorageKey("key_arama_sayfa");

  @override
  void initState() {
    super.initState();
    anasayfa = Anasayfa(keyAnasayfa);
    aramaSayfasi = AramaSayfasi(keyArama);
    pageViewOrnek = PageViewOrnek();
    tumSayfalar = [anasayfa, aramaSayfasi, pageViewOrnek];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text(
          "Tasarım",
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: secilenMenuItemi < tumSayfalar.length
          ? tumSayfalar[secilenMenuItemi]
          : tumSayfalar[0],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  bottomNavMenu() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.done),
            title: Text("home"),
            backgroundColor: Colors.amber[800]),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("search"),
            backgroundColor: Colors.pink),
        BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text("add"),
            backgroundColor: Colors.purple),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            activeIcon: Icon(Icons.account_box),
            title: Text("account"),
            backgroundColor: Colors.blue),
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: secilenMenuItemi,
      onTap: (value) {
        setState(() {
          secilenMenuItemi = value;
          if (secilenMenuItemi == 3) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TabOrnek()))
                .then((value) {
              secilenMenuItemi = 0;
            });
          }
        });
      },
    );
  }
}
