import 'package:flutter/material.dart';
import 'package:phone_book/ui/page/home_screen/contact_page.dart';
import 'package:phone_book/ui/widget/comp_add.dart';
import 'package:phone_book/ui/widget/custom_button.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDCDCDC),
      body: Center(
        child: SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const ContactsPage(),
                            ),
                          );
                        },
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
                    // padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Image(
                      image: AssetImage('images/contact_icon.png'),
                      width: 184,
                      height: 160,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Container(
                        child: const Text(
                          'Alexander Arnold',
                          // softWrap: true,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 70),
                            child: Icon(
                              Icons.phone,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '+62 1234 5678 910',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 70),
                            child: Icon(
                              Icons.assured_workload_sharp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Refactory',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 70),
                            child: Icon(
                              Icons.work,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Engineer',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 70),
                            child: Icon(
                              Icons.mail_outline_sharp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'abcd@gmail.com',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
