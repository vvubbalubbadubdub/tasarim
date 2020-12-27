import 'package:flutter/material.dart';

class TabOrnek extends StatefulWidget {
  @override
  _TabOrnekState createState() => _TabOrnekState();
}

class _TabOrnekState extends State<TabOrnek>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab kullanımı"),
        bottom: TabBar(
            indicatorColor: Colors.amber,
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.keyboard),
                child: Text("data"),
              ),
              Tab(
                icon: Icon(Icons.keyboard),
                child: Text("data"),
              ),
              Tab(
                icon: Icon(Icons.keyboard),
                child: Text("data"),
              )
            ]),
      ),
      body: TabBarView(controller: tabController, children: [
        Container(
          color: Colors.redAccent,
          child: Center(child: Text("Tab 1", style: TextStyle(fontSize: 48))),
        ),
        Container(
          color: Colors.redAccent,
          child: Center(child: Text("Tab 2", style: TextStyle(fontSize: 48))),
        ),
        Container(
          color: Colors.redAccent,
          child: Center(child: Text("Tab 3", style: TextStyle(fontSize: 48))),
        )
      ]),
    );
  }
}
