import 'package:flutter/material.dart';
import 'package:tasarim/models/veri.dart';

class Anasayfa extends StatefulWidget {
  Anasayfa(Key k) : super(key: k);
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  List<Veri> tumVeriler;

  @override
  void initState() {
    super.initState();
    tumVeriler = [
      Veri("başlık 1", "uygulama içeriği", true),
      Veri("başlık 2", "içerik:", false),
      Veri("başlık 3", "uygulama içeriği", false),
      Veri("başlık 4", "uygulama içeriği", false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tumVeriler.length,
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey("$index"),
          title: Text(tumVeriler[index].baslik, style: TextStyle(fontSize: 24)),
          initiallyExpanded: tumVeriler[index].expanded,
          children: [
            Container(
              width: double.infinity,
              color: index % 2 == 0 ? Colors.lime[400] : Colors.pink[200],
              height: 200,
              child: Text(tumVeriler[index].icerik),
            )
          ],
        );
      },
    );
  }
}
