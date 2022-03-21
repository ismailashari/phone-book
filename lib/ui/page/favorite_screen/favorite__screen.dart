import 'package:flutter/material.dart';
import 'package:phone_book/ui/page/detail_screen/detail_screen.dart';
import 'package:phone_book/ui/widget/contact_list.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                    left: 27,
                    top: 29,
                    bottom: 11,
                  ),
                  child: const Text(
                    'Favorites',
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const DetailPage(),
                      ),
                    );
                  },
                  iconPressed: const Icon(
                    Icons.star,
                    color: Color(0xFF707070),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
