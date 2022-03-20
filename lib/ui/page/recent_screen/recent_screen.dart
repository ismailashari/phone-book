import 'package:flutter/material.dart';
import 'package:phone_book/ui/widget/contact_list.dart';
// import 'package:phone_book/ui/widget/navigation_bar.dart';

class RecentPage extends StatelessWidget {
  const RecentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 27, top: 16),
              child: const Text(
                'Recent',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 15),
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
              onClick: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) => const LoginPage(),
                //   ),
                // );
              },
              iconPressed: const Icon(
                Icons.more_horiz,
                color: Color(0xFF707070),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
