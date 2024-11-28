import 'package:flutter/material.dart';
import 'package:tugaspm2_rizqiana/const/resource.dart';
import 'package:tugaspm2_rizqiana/home_screen.dart';
import 'package:tugaspm2_rizqiana/styles.dart';
import 'package:tugaspm2_rizqiana/widget/custom_textfield.dart';

import 'main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Login", style: TextStyles.title,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Image.asset(R.ASSETS_IMAGES_LOGIN_IMG_PNG),
            const SizedBox(height: 24.0),
            Text('Login Details',
              style: TextStyles.title.copyWith(fontSize: 20.0)
            ),
              const SizedBox(height: 24.0),
              CustomTextfield(
                  controller: emailController,
                  textInputType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  hint: 'Email or Username'
              ),
              const SizedBox(height: 16.0),
              CustomTextfield(
                controller: passwordController,
                textInputType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                hint: 'Password',
                isObscure: isObscure,
                hasSuffix: true,
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
            ),
              const SizedBox(height: 8.0),
              Text('Forgot Password ?', style: TextStyles.body),
              const SizedBox(height: 24.0),
              ElevatedButton(
                  onPressed: () {// Navigate to the second page
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen(email: emailController.text,)),
                          (Route<dynamic> route) => false,
                    );},
                  child: Text(
                    'Login',
                    style: TextStyles.title.copyWith(fontSize: 20.0),
                  ),
              ),
          ],

          ),
        )

    );
  }
}