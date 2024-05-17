import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductBuy extends StatefulWidget {
  const ProductBuy({super.key});

  @override
  State<ProductBuy> createState() => _ProductBuyState();
}

class _ProductBuyState extends State<ProductBuy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/f338/ab39/9898905cebf81027dcede2eb3c66dbc7?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EfCq5cYp-EySGZ~AVl2Npk-ixqSCCerI3JmRGaLWAD0wV1hsPa-Pg~nqnGL5p-ymdUfaQGI81eNJsw3cf8WolFa88tGLnM8CumrnJdonXIASswiJdV7m-4Ghoz7DgDgUbdSrukzAKbIvyuZYgOPl7OhH1Du5GoyP4t0H7uMr9eP0PHiPVe3Qvm6CTkgVhp6VyRyG-6ZhV3TFWp63iy3dEmaSarpEJ1O8N3fZCOFzYcB5CMC6sG03FjrjWpD84V2IANC16rUKcEG-vHoyeRFelkzyLs3~3u055N7w8G4kIKVntsgOWR7M4JkLyHGXWt7L0vJneUkFMtnBD1g3-dmLyg__"))),
                        height: 150,
                        width: 100,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hanging Scale 5 ton",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$22499",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Shipping Address",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          child: Text(
                            "Alice Eve\n 2074, Half and Half Drive\n Hialeah, Florida - 33012\n Ph: +1 561-230-0033",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          height: 80,
                          width: 250,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit_note_sharp),
                          iconSize: 35,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Invoice Details",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Product cost:"),
                        Text("24,999"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Shipping fee:"),
                        Text("150"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Total:", style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("25,149"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey,
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Proceed to pay",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
