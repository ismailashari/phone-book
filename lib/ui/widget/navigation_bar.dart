import 'package:flutter/material.dart';
import 'package:phone_book/ui/page/favorite_screen/favorite__screen.dart';
import 'package:phone_book/ui/page/home_screen/contact_page.dart';
import 'package:phone_book/ui/page/recent_screen/recent_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  @override
  State<BottomNavBar> createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {
  int currentIndex = 0;

  final List<Widget> body = [
    const RecentPage(),
    const ContactsPage(),
    const FavoritePage(),
  ];

  void tapNavBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffC4C4C4),
        onTap: tapNavBar,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 9),
              child: Icon(
                Icons.access_time_sharp,
                size: 30,
                color: Color(0xff000000),
              ),
            ),
            label: '',
            activeIcon: Padding(
              padding: EdgeInsets.only(top: 9),
              child: Icon(
                Icons.access_time_filled,
                size: 30,
                color: Color(0xff000000),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 9),
              child: Icon(
                Icons.person_outline,
                size: 34,
                color: Color(0xff000000),
              ),
            ),
            label: '',
            activeIcon: Padding(
              padding: EdgeInsets.only(top: 9),
              child: Icon(
                Icons.person,
                size: 34,
                color: Color(0xff000000),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 9),
              child: Icon(
                Icons.star_outline,
                size: 34,
                color: Color(0xff000000),
              ),
            ),
            label: '',
            activeIcon: Padding(
              padding: EdgeInsets.only(top: 9),
              child: Icon(
                Icons.star,
                size: 34,
                color: Color(0xff000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
