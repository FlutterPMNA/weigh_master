import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weigh_master/login_page.dart';
import 'package:weigh_master/widgets/custom_form_field.dart';
import 'package:weigh_master/widgets/custom_nav_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isObscured = true;
  void onPress() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  final formKey= GlobalKey<FormState>();
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  TextEditingController confirmPasswordController= TextEditingController();

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
              key:  formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign up",
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
                      hintText: "example@gmail.com"),
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
                    hintText: "Must be 8 characters",
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Confirm Password"),
                    ],
                  ),
                  CustomFormField(
                    controller: confirmPasswordController,
                    isObscured: _isObscured,
                    onPress: onPress,
                    hintText: "Repeat Password",
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomNavButton(buttonText: "Sign Up", onPress: () {
                          if(formKey.currentState!.validate()){
                            FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value) {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                            });
                          }
                        },),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          child: Text("login")),
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
