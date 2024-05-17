import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyActivity extends StatefulWidget {
  const MyActivity({super.key});

  @override
  State<MyActivity> createState() => _MyActivityState();
}

class _MyActivityState extends State<MyActivity> {

  bool orderList= true;
  String type= "Owned";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      orderList = true;
                      type= "Owned";
                    });
                  },
                  child: Text("Owned", style:  TextStyle(color: orderList? Colors.black:Colors.grey),),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      orderList = false;
                      type= "Rented";
                    });
                  },
                  child: Text("Rented", style:  TextStyle(color: orderList? Colors.grey:Colors.black),),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 120,
                      child: Card(
                        color: CupertinoColors.systemGrey6,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: ColoredBox(color: Colors.white70),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    type,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "156154",
                                    style: TextStyle(
                                        color: CupertinoColors.systemGrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
