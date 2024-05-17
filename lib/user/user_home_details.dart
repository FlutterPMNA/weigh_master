import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:weigh_master/feedback_page.dart';
import 'package:weigh_master/user/liked_items.dart';
import 'package:weigh_master/user/user_buy.dart';
import 'package:weigh_master/user/user_rental.dart';

import '../widgets/custom_home_tile.dart';
import '../widgets/custom_show_button.dart';

class UserHomeDetails extends StatefulWidget {
  const UserHomeDetails({super.key});

  @override
  State<UserHomeDetails> createState() => _UserHomeDetailsState();
}

class _UserHomeDetailsState extends State<UserHomeDetails> {

  List<String> namesToSee = [
    "Year end Sale",
    "Summer Sale",
    "Cool Cool",
    "Sports Kit",
    "Local but Latest",
    "Deriving more",
  ];

  List<IconData> iconsToShow = [
    Icons.price_check,
    Icons.currency_exchange,
    Icons.favorite_outlined,
    Icons.more_horiz_outlined,
    Icons.shopping_cart,
    Icons.date_range_outlined,
    Icons.miscellaneous_services,
    Icons.looks,
  ];

  List<Widget> routes = [
    const UserBuy(),
    const UserRental(),
    const LikedItems(),
    const FeedbackPage(),
    Scaffold(appBar: AppBar(), body: Center(child: Text("data"))),
    Scaffold(appBar: AppBar(), body: Center(child: Text("data"))),
    Scaffold(appBar: AppBar(), body: Center(child: Text("data"))),
    Scaffold(appBar: AppBar(), body: Center(child: Text("data"))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(items: [
            for (String textToSee in namesToSee)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/chessOld.jpg"),
                          fit: BoxFit.cover)),
                  child: Center(
                      child: Text(
                        textToSee,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
              )
          ], options: CarouselOptions(height: 200, autoPlay: true)),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemCount: iconsToShow.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomShowButton(
                      iconToShow: iconsToShow[index],
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => routes[index]));
                      },
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              color: Color.fromRGBO(236, 183, 133, 0.76),
              height: 200,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomHomeTile(
                          amount: 60,
                          detailText: "Check Warranty",
                          height: 100,
                          width: 120,
                          size: 20,
                        ),
                        CustomHomeTile(
                          amount: 3,
                          detailText: "Renewal",
                          height: 80,
                          width: 120,
                          size: 20,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomHomeTile(
                          amount: 50,
                          detailText: "Total",
                          height: 100,
                          width: 120,
                          size: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomHomeTile(
                              amount: 20,
                              detailText: "Buy",
                              height: 80,
                              width: 60,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomHomeTile(
                              amount: 26,
                              detailText: "Rent",
                              height: 80,
                              width: 60,
                              size: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
