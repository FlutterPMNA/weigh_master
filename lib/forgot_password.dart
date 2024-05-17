import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weigh_master/otp_screen.dart';
import 'package:weigh_master/widgets/custom_form_field.dart';
import 'package:weigh_master/widgets/custom_nav_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController= TextEditingController();

  @override
  Widget build(BuildContext context) {

    void onPress(){}

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Text("Forgot Password?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),),
            SizedBox(height: 20,),
            Text("Don’t worry! It happens. Please enter the email associated with your account.", style:  TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
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
              children: [
                Expanded(
                  child: CustomNavButton(buttonText: "Send OTP", onPress: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> OTPScreen())); },),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
