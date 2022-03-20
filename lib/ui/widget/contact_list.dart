import 'package:flutter/material.dart';
// import 'package:phone_book/ui/page/sign_in/signin.dart';

class ContactList extends StatelessWidget {
  final Function() onClick;
  final Widget iconPressed;
  const ContactList(
      {Key? key, required this.onClick, required this.iconPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset(
                    'images/contact_icon.png',
                    width: 45,
                    height: 45,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: const Text(
                        'Namaa',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: const Text(
                        '123',
                        style: TextStyle(color: Color(0xFF707070)),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: IconButton(icon: iconPressed, onPressed: onClick),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
