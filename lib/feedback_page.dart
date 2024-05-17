import 'package:flutter/material.dart';
import 'package:weigh_master/widgets/custom_form_field.dart';
import 'package:weigh_master/widgets/custom_nav_button.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {

  final formKey= GlobalKey<FormState>();
  TextEditingController nameController= TextEditingController();
  TextEditingController emailController= TextEditingController();
  TextEditingController descriptionController= TextEditingController();

  void onPressed(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WeighMaster"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Name"),
                  ],
                ),
                CustomFormField(
                    controller: nameController,
                    isPassword: false,
                    isObscured: true,
                    onPress: onPressed,
                    hintText: "Enter Name"),
                SizedBox(
                  height: 20,
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
                    onPress: onPressed,
                    hintText: "Enter Email"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Description"),
                  ],
                ),
                CustomFormField(
                  controller: descriptionController,
                  isObscured: false,
                  onPress: onPressed,
                  hintText: "Description",
                  isPassword: false,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomNavButton(
                        buttonText: "Submit",
                        onPress: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
