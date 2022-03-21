import 'package:flutter/material.dart';
import 'package:phone_book/ui/page/home_screen/contact_page.dart';
import 'package:phone_book/ui/widget/comp_add.dart';
import 'package:phone_book/ui/widget/custom_button.dart';

class AddContact extends StatelessWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Image(
                    image: AssetImage('images/profile_picture.png'),
                    width: 184,
                    height: 160,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const CompAdd(
                        prefixIcon: Icon(Icons.person, color: Colors.black),
                        nameTitle: 'Name',
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: const CompAdd(
                              nameTitle: 'Phone',
                              prefixIcon: Icon(
                                Icons.numbers,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: const CompAdd(
                              nameTitle: 'Email',
                              prefixIcon: Icon(
                                Icons.mail_outline_sharp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: const CompAdd(
                              nameTitle: 'Company',
                              prefixIcon: Icon(
                                Icons.assured_workload_sharp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: const CompAdd(
                              nameTitle: 'Job',
                              prefixIcon: Icon(
                                Icons.work,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                        height: 53,
                        width: 370,
                        child: CustomButton(
                          btnTitle: 'CREATE NEW ACCOUNT',
                          onClick: () {},
                        ),
                      )
                    ],
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
