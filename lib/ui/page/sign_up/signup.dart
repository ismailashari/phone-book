import 'package:flutter/material.dart';
import 'package:phone_book/ui/page/sign_in/signin.dart';
import 'package:phone_book/ui/widget/comp_form.dart';
import 'package:phone_book/ui/widget/custom_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Image.asset('images/logo_contact.png',
                    height: 210, width: 252),
              ),
              const SizedBox(height: 45),
              const CompForm(
                // boxHeight: 50,
                fillColor: Color(0xFF1D3E53),
                obscureText: false,
                nameTitle: 'Name',
                prefixIcon: Icon(
                  Icons.person_outline_sharp,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              const CompForm(
                // boxHeight: 50,
                fillColor: Color(0xFF1D3E53),
                obscureText: false,
                nameTitle: 'Email',
                prefixIcon: Icon(
                  Icons.mail_outline_sharp,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              const CompForm(
                // boxHeight: ,
                fillColor: Color(0xFF1D3E53),
                obscureText: true,
                nameTitle: 'Password',
                prefixIcon: Icon(
                  Icons.lock_outline_sharp,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 27),
              CustomButton(
                onClick: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LoginPage(),
                    ),
                  );
                },
                btnTitle: 'REGISTER',
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF05466A),
    );
  }
}
