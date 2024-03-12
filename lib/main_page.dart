import 'package:flutter/material.dart';
import 'package:flutter_case/chat_page.dart';
import 'package:flutter_case/contact_page.dart';
import 'package:flutter_case/discover_page.dart';
import 'package:flutter_case/mine_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    ChatPage(),
    ContactPage(),
    DiscoverPage(),
    MinePage()
  ];

  BottomNavigationBarItem buildBottomNavItem(
      String label, String image, String activeImage) {
    return BottomNavigationBarItem(
      icon: Image(
        image: AssetImage(image),
        width: 25,
        height: 25,
      ),
      activeIcon: Image(
        image: AssetImage(activeImage),
        width: 25,
        height: 25,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        items: [
          buildBottomNavItem(
              "微信", "images/message_normal.png", "images/message_press.png"),
          buildBottomNavItem(
              "通讯录", "images/contacts_normal.png", "images/contacts_press.png"),
          buildBottomNavItem("发现", "images/discovery_normal.png",
              "images/discovery_press.png"),
          buildBottomNavItem(
              "我", "images/me_normal.png", "images/me_press.png"),
        ],
      ),
    );
  }
}
