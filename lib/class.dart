import 'package:flutter/material.dart';

class detail extends StatefulWidget {
  const detail({super.key});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: InkWell(
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        //   child: Icon(Icons.chevron_left),
        // ),
        title: Text("Detail page"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 400,
                    width: 410,
                    color: Colors.black12,
                    child: Image.network(
                        "https://izicop.com/cdn/shop/products/snakerstoreNike_M2K_Tekno_White_Black_Orange-AO3108-101-0.png?v=1673882779"),
                  ),
                  Container(
                    height: 400,
                    width: 410,
                    color: Colors.black12,
                    child:
                        // Image.network("https://izicop.com/cdn/shop/products/snakerstoreNike_M2K_Tekno_White_Black_Orange-AO3108-101-0.png?v=1673882779"),
                        Image.network(
                            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/54b05355-dfdd-4589-876e-c02f97552e59/air-max-90-gore-tex-shoes-K3mBRb.png"),
                  ),
                  Container(
                    height: 400,
                    width: 410,
                    color: Colors.black12,
                    child:
                        // Image.network("https://izicop.com/cdn/shop/products/snakerstoreNike_M2K_Tekno_White_Black_Orange-AO3108-101-0.png?v=1673882779"),
                        Image.network(
                            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/0f495e92-9ff3-4ca6-804d-40a1a43242b1/air-max-90-gore-tex-shoes-K3mBRb.png"),
                  ),
                  Container(
                    height: 400,
                    width: 410,
                    color: Colors.black12,
                    child:
                        // Image.network("https://izicop.com/cdn/shop/products/snakerstoreNike_M2K_Tekno_White_Black_Orange-AO3108-101-0.png?v=1673882779"),
                        Image.network(
                            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/776c9567-f6d6-49fd-91c5-ed8225a2d26c/air-max-90-gore-tex-shoes-K3mBRb.png"),
                  ),
                  Container(
                    height: 400,
                    width: 410,
                    color: Colors.black12,
                    child:
                        // Image.network("https://izicop.com/cdn/shop/products/snakerstoreNike_M2K_Tekno_White_Black_Orange-AO3108-101-0.png?v=1673882779"),
                        Image.network(
                            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/88bc0285-1a5d-49e7-8e8e-5cd8fa58a7d5/air-max-90-gore-tex-shoes-K3mBRb.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "NIKE AIR MAX 200",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$1000",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 205, top: 20),
              child: Text(
                "Available Sizes",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35, top: 20),
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "US 6",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "US 7",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "US 8",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "US 9",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230, top: 20),
              child: Text(
                "Description",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 20, right: 40),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 300),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, "cart_page");
                },
                child: Icon(Icons.shopping_cart_checkout),
                foregroundColor: Colors.black,
                splashColor: Colors.blue,
                backgroundColor: Colors.red,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cart_page");
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Add to cart",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Map> cartList = [];
