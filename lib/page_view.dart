import 'package:flutter/material.dart';

class PageViewOrnek extends StatefulWidget {
  @override
  _PageViewOrnekState createState() => _PageViewOrnekState();
}

class _PageViewOrnekState extends State<PageViewOrnek> {
  var myController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  bool yatakEksen = true;
  bool pageSnapping = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            scrollDirection:
                yatakEksen == true ? Axis.horizontal : Axis.vertical,
            reverse: false,
            controller: myController,
            pageSnapping: pageSnapping,
            onPageChanged: (index) {
              print(index);
            },
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.indigo,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "sayfa 0",
                        style: TextStyle(fontSize: 36),
                      ),
                      RaisedButton(
                        onPressed: () {
                          myController.jumpToPage(2);
                        },
                        child: Text(
                          "son sayfaya git",
                          style: TextStyle(fontSize: 24),
                        ),
                        color: Colors.purple[100],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    "sayfa 1",
                    style: TextStyle(fontSize: 36),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.teal,
                child: Center(
                  child: Text(
                    "sayfa 2",
                    style: TextStyle(fontSize: 36),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 100,
            color: Colors.blueGrey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "yatay eksende çalış",
                        style: TextStyle(fontSize: 36),
                      ),
                      Checkbox(
                          value: yatakEksen,
                          onChanged: (deger) {
                            setState(() {
                              yatakEksen = deger;
                            });
                          })
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "page snapping",
                        style: TextStyle(fontSize: 36),
                      ),
                      Checkbox(
                          value: pageSnapping,
                          onChanged: (deger) {
                            setState(() {
                              pageSnapping = deger;
                            });
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
