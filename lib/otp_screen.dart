import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:weigh_master/user/user_home.dart';
import 'package:weigh_master/widgets/custom_nav_button.dart';


class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Text("Please check your email", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),),
            SizedBox(height: 15,),
            Text("We have sent OTP to your E-Mail", style:  TextStyle(fontSize: 15),),
            SizedBox(height: 15,),
            OtpTextField(
              numberOfFields: 4,
              fieldWidth: 70,
              margin: EdgeInsets.symmetric(horizontal: 5),
              enabledBorderColor: Colors.black,
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              borderRadius: BorderRadius.circular(10),
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                  child: CustomNavButton(
                    buttonText: "Verify",
                    onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserHome()));
                    },
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
