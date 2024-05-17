import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weigh_master/forgot_password.dart';
import 'package:weigh_master/otp_screen.dart';
import 'package:weigh_master/sign_up_page.dart';
import 'package:weigh_master/user/user_home.dart';
import 'package:weigh_master/widgets/custom_form_field.dart';
import 'package:weigh_master/widgets/custom_nav_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscured = true;
  void onPress() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(CupertinoIcons.sparkles)],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Email address"),
                    ],
                  ),
                  CustomFormField(
                      controller: emailController,
                      isPassword: false,
                      isObscured: true,
                      onPress: onPress,
                      hintText: "Enter Email"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Password"),
                    ],
                  ),
                  CustomFormField(
                    controller: passwordController,
                    isObscured: _isObscured,
                    onPress: onPress,
                    hintText: "Enter Password",
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()));
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomNavButton(
                          buttonText: "Login",
                          onPress: () {
                            if(formKey.currentState!.validate()){
                              FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text)
                                  .then((value) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const UserHome()));
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Create an account"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                          },
                          child: Text("Sign Up")),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
