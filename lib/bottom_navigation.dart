import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:navigation_bar_2/profile_page.dart';
import 'package:navigation_bar_2/settings_page.dart';

import 'favorite_page.dart';
import 'helpus_page.dart';
import 'home_page.dart';

class BotNav extends StatefulWidget {
  const BotNav({Key? key}) : super(key: key);

  @override
  State<BotNav> createState() => _BotNavState();
}

class _BotNavState extends State<BotNav> {
  int selectedPage = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        Settings(),
        HelpUsPage(),
        HomePage(),
        ProfilePage(),
        FavoritePage()
      ][selectedPage],

      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        backgroundColor: Colors.black,
        items: [

          TabItem(icon: Icons.favorite, title: "Favorite"),
          TabItem(icon: Icons.person, title: "Profile"),
          TabItem(icon: Icons.home, title: "Home"),
          TabItem(icon: Icons.help, title: "Help"),
          TabItem(icon: Icons.settings, title: "Settings"),
        ],
        initialActiveIndex: 2,
        onTap: (int i){
          setState(() {
            selectedPage = i;
          });
        },
      ),
    );
  }
}
