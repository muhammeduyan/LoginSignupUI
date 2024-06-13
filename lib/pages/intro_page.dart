import 'package:flutter/material.dart';
import 'package:login_signup_ui/pages/login_page.dart';
import 'package:login_signup_ui/pages/signup_page.dart';
import 'package:login_signup_ui/util/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.indigo,
              Colors.lightBlueAccent,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                MyButton(
                  text: 'Giriş Yap',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                ),

                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: const Text('veya', style: TextStyle(color: Colors.white, fontSize: 20)),
                ),

                MyButton(
                  text: 'Kayıt Ol',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
      ),
    );
  }
}