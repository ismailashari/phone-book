import 'package:flutter/material.dart';
import 'package:phone_book/ui/page/sign_up/signup.dart';
import 'package:phone_book/ui/widget/comp_form.dart';
import 'package:phone_book/ui/widget/custom_button.dart';
import 'package:phone_book/ui/widget/navigation_bar.dart';
// import 'package:phone_book/ui/widget/navigation_bar.dart';
// import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            children: [
              Container(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const RegisterPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
              ),
              Container(
                child: Image.asset('images/logo_contact.png',
                    height: 300, width: 324),
              ),
              const SizedBox(
                height: 38,
              ),
              const CompForm(
                fillColor: Color(0xFF1D3E53),
                obscureText: false,
                nameTitle: 'Email',
                prefixIcon: Icon(
                  Icons.mail_outline_sharp,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const CompForm(
                fillColor: Color(0xFF1D3E53),
                obscureText: true,
                nameTitle: 'Password',
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              CustomButton(
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const BottomNavBar(),
                    ),
                  );
                },
                btnTitle: 'LOGIN',
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF05466A),
    );
  }
}
