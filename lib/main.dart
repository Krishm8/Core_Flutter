import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:krish/cart_page.dart';
import 'package:krish/class.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //
      initialRoute: "/",
      routes: {
        "/":(context) => home(),
        "class": (context)=> detail(),
        "cart_page":(context) => cart(),
      },
    ),
  );
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: CircleAvatar(
            backgroundColor: Colors.black12,
            foregroundColor: Colors.black,
            child: Icon(Icons.person,size: 30,),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cart_page");
              },
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black12,
                foregroundColor: Colors.black,
                child: Icon(
                  Icons.shopping_cart,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Our",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                  ),
                ),
                Text(
                  "Products",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      padding: EdgeInsets.only(left: 15),
                      height: 60,
                      width: 275,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(children: [
                        Icon(
                          Icons.search,
                          size: 30,
                        ),
                        Text(
                          " Search Products",
                          style: TextStyle(fontSize: 18, color: Colors.black38),
                        )
                      ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      height: 60,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.sync_alt,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 50,
                      width: 145,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: Colors.orange, width: 3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Image.network(
                            "https://izicop.com/cdn/shop/products/snakerstoreNike_M2K_Tekno_White_Black_Orange-AO3108-101-0.png?v=1673882779",
                            height: 40,
                          ),
                          Text(" Sneakers")
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Image.network(
                            "https://www.aptronixindia.com/media/catalog/product/cache/31f0162e6f7d821d2237f39577122a8a/o/r/orange_alpine_loop.png",
                            height: 40,
                          ),
                          Text(" Watch"),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      padding: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Image.network(
                            "https://freepngimg.com/download/jacket/11-2-jacket-png.png",
                            height: 40,
                          ),
                          Text("  Jaket"),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: product.map((e) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "class", arguments: e);
                      },
                      child: shoes(
                        s: e["name"],
                        p: e["price"],
                        i: e["img"],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class shoes extends StatelessWidget {
  String? s;
  int? p;
  String? i;

  shoes({super.key, this.s, this.p, this.i});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      // padding: EdgeInsets.only(left: 10),
      height: 170,
      width: 370,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(children: [
        Image.network(
          i ?? "",
          height: 100,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$s",
              style: TextStyle(fontSize: 20),
            ),
            Positioned(
              top: 10,
              child: Text(
                "\$$p",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            RatingBar.builder(
              initialRating: 2,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 3,
              // itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ],
        ),
      ]),
    );
  }
}

List product = [
  {
    "img":
        "https://izicop.com/cdn/shop/products/snakerstoreNike_M2K_Tekno_White_Black_Orange-AO3108-101-0.png?v=1673882779",
    "name": "NIKE AIR MAX 200",
    "price": 1000,
  },
  {
    "img":
        "https://izicop.com/cdn/shop/products/snakerstoreNike_M2K_Tekno_White_Black_Orange-AO3108-101-0.png?v=1673882779",
    "name": "NIKE AIR MAX 97",
    "price": 950,
  },
  {
    "img":
        "https://izicop.com/cdn/shop/products/snakerstoreNike_M2K_Tekno_White_Black_Orange-AO3108-101-0.png?v=1673882779",
    "name": "NIKE AIR MAX 90",
    "price": 850,
  }
];
