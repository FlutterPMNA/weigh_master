import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weigh_master/constants/custom_colors.dart';
import 'package:weigh_master/user/product_buy.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

int counter = 0;
bool favourite = false;

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundGreen,
        title: Text(
          "Weigh Master",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2)),
              height: MediaQuery.of(context).size.height / 3,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              favourite = !favourite;
                            });
                          },
                          icon:favourite? Icon(Icons.favorite_border)
                              : Icon(Icons.favorite_outlined, color: Colors.red,),iconSize: 40,)
                    ],
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://s3-alpha-sig.figma.com/img/f338/ab39/'
                                  '9898905cebf81027dcede2eb3c66dbc7?Expires='
                                  '1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'
                                  '&Signature=EfCq5cYp-EySGZ~AVl2Npk-'
                                  'ixqSCCerI3JmRGaLWAD0wV1hsPa-Pg~nqnGL5p-'
                                  'ymdUfaQGI81eNJsw3cf8WolFa88tGLnM8CumrnJdonXIASswiJdV7m-'
                                  '4Ghoz7DgDgUbdSrukzAKbIvyuZYgOPl7OhH1Du5GoyP4t0H7uMr9eP0PHiPVe3Qvm6CTkgVhp6VyRyG'
                                  '-6ZhV3TFWp63iy3dEmaSarpEJ1O8N3fZCOFzYcB5CMC6sG03FjrjWpD84V2IANC16rUKcEG'
                                  '-vHoyeRFelkzyLs3~3u055N7w8G4kIKVntsgOWR7M4JkLyHGXWt7L0vJneUkFMtnBD1g3-dmLyg__'),
                              fit: BoxFit.cover)),
                      height: 200,
                      width: 180,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: Column(
                children: [
                  Text(
                    "Hanging Scale | Capacity 5 ton",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "\$22499",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  if (counter > 0) counter--;
                                });
                              },
                              icon: Icon(
                                CupertinoIcons.minus_circle_fill,
                                size: 35,
                              )),
                          Text(
                            "$counter",
                            style: TextStyle(fontSize: 25),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  counter++;
                                });
                              },
                              icon: Icon(
                                CupertinoIcons.plus_circle_fill,
                                size: 35,
                              )),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 200,
                child: Text("Hanging Scale 5 ton, which are specially designed for Cranes or used by Hanging by making it compact and with higher accuracy than before. Use High Precision Load for achieving higher accuracy in Crane Scale.."),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey,),
                        child: Center(child: Text("Save Item", style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                  ),
                  SizedBox(width: 2,),
                  Expanded(
                    child: InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductBuy()));},
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue,),
                        child: Center(child: Text("Buy Now", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
