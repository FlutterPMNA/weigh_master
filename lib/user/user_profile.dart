import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weigh_master/user/my_activity.dart';
import 'package:weigh_master/widgets/custom_card.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Column(
          children: [
            CustomCard(
              icon: Icons.person,
              cardText: "Profile",
              isTrailing: true,
              onPress: () {},
            ),
            SizedBox(
              height: 15,
            ),
            CustomCard(
              icon: Icons.menu_open,
              cardText: "Warranty",
              isTrailing: true,
              onPress: () {},
            ),
            CustomCard(
              icon: Icons.miscellaneous_services,
              cardText: "Service",
              isTrailing: true,
              onPress: () {},
            ),
            SizedBox(
              height: 15,
            ),
            CustomCard(
              icon: CupertinoIcons.speaker_2,
              cardText: "Notification",
              isTrailing: true,
              onPress: () {},
            ),
            CustomCard(
              icon: CupertinoIcons.briefcase,
              cardText: "Products",
              isTrailing: true,
              onPress: () {},
            ),
            CustomCard(
              icon: CupertinoIcons.graph_square,
              cardText: "My Activity",
              isTrailing: true,
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyActivity()));
              },
            ),
            CustomCard(
              icon: Icons.nights_stay,
              cardText: "Theme",
              isTrailing: true,
              onPress: () {},
            ),
            SizedBox(
              height: 15,
            ),
            CustomCard(
              icon: Icons.contact_support_outlined,
              cardText: "Support",
              isTrailing: false,
              onPress: () {},
            ),
            CustomCard(
              icon: CupertinoIcons.power,
              cardText: "Sign Out",
              isTrailing: false,
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
