import 'package:flutter/material.dart';
import 'package:login_signup_ui/util/my_button.dart';
import 'package:login_signup_ui/util/my_textfield.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Column(
                children: [
                  const Text('Kayıt Ol',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  const SizedBox(height: 40),
                  MyTextField(
                      controller: usernameController,
                      hintText: 'Kullanıcı Adı',
                      obscureText: false),
                  const SizedBox(height: 20),
                  MyTextField(
                      controller: passwordController,
                      hintText: 'Şifre',
                      obscureText: true),
                  const SizedBox(height: 20),
                  MyTextField(
                      controller: passwordController,
                      hintText: 'Şifre Tekrarı',
                      obscureText: true),
                  const SizedBox(height: 20),
                  MyTextField(
                      controller: emailController,
                      hintText: 'E-Posta',
                      obscureText: false),
                  const SizedBox(height: 20),
                  MyTextField(
                      controller: phoneController,
                      hintText: 'Telefon',
                      obscureText: false),
                  const SizedBox(height: 20),
                  MyButton(text: 'Kayıt Ol', onTap: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
