import 'package:flutter/material.dart';
import 'package:phone_book/ui/widget/contact_list.dart';
// import 'package:phone_book/ui/widget/navigation_bar.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 27, top: 16),
                  child: const Text(
                    'My Contacts',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 14, top: 16),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/icon_button.png',
                      width: 19,
                      height: 19,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: const TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(top: 10),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 24,
                  ),
                  fillColor: Color(0xFFBEBEBE),
                  filled: true,
                  labelText: 'Search contact',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: const Text(
                'A',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                ),
              ),
            ),
            ContactList(
              iconPressed: const Icon(Icons.more_horiz),
              onClick: () {},
            ),
          ],
        ),
      ),
    );
  }
}
