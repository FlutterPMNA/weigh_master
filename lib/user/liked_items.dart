import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikedItems extends StatefulWidget {
  const LikedItems({super.key});

  @override
  State<LikedItems> createState() => _LikedItemsState();
}

class _LikedItemsState extends State<LikedItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Favorites",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
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
                              SizedBox(
                                width: MediaQuery.of(context).size.width/2,
                                child: const Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Equipment Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "156154",
                                          style: TextStyle(
                                              color: CupertinoColors.systemGrey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Icon(Icons.favorite, color: Colors.redAccent,size: 40,)
                                      ],
                                    ),
                                  ],
                                ),
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
