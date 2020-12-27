import 'package:flutter/material.dart';

class AramaSayfasi extends StatefulWidget {
  AramaSayfasi(Key k) : super(key: k);
  @override
  _AramaSayfasiState createState() => _AramaSayfasiState();
}

class _AramaSayfasiState extends State<AramaSayfasi> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemExtent: 100,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(10),
              color: index % 2 == 0
                  ? Colors.orangeAccent[200]
                  : Colors.indigo[200],
              child: Center(
                child: Text(
                  (index + 1).toString(),
                  style: TextStyle(fontSize: 36),
                ),
              ),
            ),
          );
        });
  }
}
