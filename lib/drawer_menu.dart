import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "kağan karaca",
              style: TextStyle(fontSize: 30),
            ),
            accountEmail: Text("ufukkagan.karaca@pru.edu.tr"),
            currentAccountPicture: Image.network(
              "https://images.hdqwalls.com/wallpapers/love-death-and-robots-rd.jpg",
            ),
            otherAccountsPictures: [
              Image.network(
                  "https://images.hdqwalls.com/wallpapers/baby-pogo-the-umbrella-academy-0a.jpg"),
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Text("UK"),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.hdqwalls.com/wallpapers/baby-pogo-the-umbrella-academy-0a.jpg"),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    "anasayfa",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text(
                    "ara",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text(
                    "profil",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
                Divider(
                  thickness: 2,
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.cyan,
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text(
                      "anasayfa",
                      style: TextStyle(fontSize: 24),
                    ),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text("ara"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("profil"),
                  trailing: Icon(Icons.chevron_right),
                ),
                Divider(
                  thickness: 2,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
