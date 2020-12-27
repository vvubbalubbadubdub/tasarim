import 'package:flutter/material.dart';

class KisiselFont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Kişisel font kullanımı",
            style: TextStyle(
                fontFamily: "ElYazisi",
                fontSize: 36,
                fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          "Kişisel font kullanımı",
          style: TextStyle(
            fontFamily: "DuzYazi",
            fontSize: 36,
          ),
        ),
        Text(
          "Kişisel font kullanımı",
          style: TextStyle(
            fontSize: 36,
          ),
        ),
      ],
    );
  }
}
