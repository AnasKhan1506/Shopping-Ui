import 'package:flutter/material.dart';

import '../Slider_screen/widgets/item_Cart.dart';

class ShirtCategory extends StatefulWidget {
  const ShirtCategory({super.key});

  @override
  State<ShirtCategory> createState() => _ShirtCategoryState();
}

class _ShirtCategoryState extends State<ShirtCategory> {
  List<String> cartImageList = [
    "assets/images/pic.svg",
    "assets/images/pic.svg",
    "assets/images/pic.svg",
    "assets/images/pic.svg",
    "assets/images/pic.svg",
    "assets/images/pic.svg",
  ];
  List<String> itemName = [
    "Full sleeves",
    "Check",
    "Casual",
    "Formal",
    "Stripe",
    "Hooded"
  ];
  List<String> itemPriceList = [
    "\$500",
    "\$600",
    "\$400",
    "\$600",
    "\$300",
    "\$900"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Add a container above the GridView
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width * 1,
            color: const Color.fromARGB(255, 218, 217, 217),
            margin: EdgeInsets.only(bottom: 20),
            child: Container(
              margin: EdgeInsets.all(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SHIRTS",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  ),
                  Text(
                    "By Category",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: cartImageList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.95,
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return ItemCart(
                      cartImageList: cartImageList,
                      itemPriceList: itemPriceList,
                      itemName: itemName,
                      index: index,
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
