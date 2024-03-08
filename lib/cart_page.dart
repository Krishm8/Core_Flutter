import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left,size: 40,),
        ),
        title: Align(
          alignment: Alignment(-0.2, 1),
          child: Text(
            "Cart",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 80, top: 20),
                padding: EdgeInsets.only(left: 70, top: 20),
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text(
                      "NIKE AIR MAX 200",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 10),
                          child: Text(
                            "\$1000",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, top: 10),
                          child: Icon(
                            Icons.add_circle,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            " 1 ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Icon(
                            Icons.remove_circle,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.network(
                  "https://izicop.com/cdn/shop/products/snakerstoreNike_M2K_Tekno_White_Black_Orange-AO3108-101-0.png?v=1673882779",
                  height: 100,
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 80, top: 20),
                padding: EdgeInsets.only(left: 70, top: 20),
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text(
                      "NIKE AIR MAX 200",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 10),
                          child: Text(
                            "\$1000",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, top: 10),
                          child: Icon(
                            Icons.add_circle,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            " 1 ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Icon(
                            Icons.remove_circle,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.network(
                  "https://izicop.com/cdn/shop/products/snakerstoreNike_M2K_Tekno_White_Black_Orange-AO3108-101-0.png?v=1673882779",
                  height: 100,
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 80, top: 20),
                padding: EdgeInsets.only(left: 70, top: 20),
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text(
                      "NIKE AIR MAX 200",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 10),
                          child: Text(
                            "\$1000",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, top: 10),
                          child: Icon(
                            Icons.add_circle,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            " 1 ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Icon(
                            Icons.remove_circle,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.network(
                  "https://izicop.com/cdn/shop/products/snakerstoreNike_M2K_Tekno_White_Black_Orange-AO3108-101-0.png?v=1673882779",
                  height: 100,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
