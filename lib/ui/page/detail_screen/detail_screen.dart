import 'package:flutter/material.dart';
import 'package:phone_book/ui/widget/comp_add.dart';
import 'package:phone_book/ui/widget/comp_form.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'images/back_button.png',
                    width: 21,
                    height: 17,
                  ),
                ),
                const Text(
                  'Back',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Image(
                image: AssetImage('images/profile_picture.png'),
                width: 184,
                height: 160,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CompAdd(
                    prefixIcon: Icon(Icons.person, color: Colors.black),
                    nameTitle: 'namaa',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
