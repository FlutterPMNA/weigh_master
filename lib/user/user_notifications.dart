import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserNotifications extends StatefulWidget {
  const UserNotifications({super.key});

  @override
  State<UserNotifications> createState() => _UserNotificationsState();
}

class _UserNotificationsState extends State<UserNotifications> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0,),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("New Messages", style: TextStyle(fontSize: 25),),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your certificate is updated.", style: TextStyle(fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Icon(Icons.file_download_outlined),
                          SizedBox(width: 5,),
                          Text("Demo File.pdf"),
                          SizedBox(width: 5,),
                          Text("2.2 MB", style: TextStyle(color: Colors.black45),),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("14h"),
                      Icon(Icons.more_horiz)
                    ],
                  )
                ],
              ),
            ),
          ),
        //   Messages Read

          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Messages Read", style: TextStyle(fontSize: 25),),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 200,child: Text("Your weigh machine renewal is tomorrow.", style: TextStyle(fontWeight: FontWeight.bold),)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("2d"),
                      Icon(Icons.more_horiz)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
