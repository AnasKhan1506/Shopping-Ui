import 'package:flutter/material.dart';
import 'package:shopping_store/Screens/Slider_screen/widgets/item_Cart.dart';

class SneakerCategory extends StatefulWidget {
  const SneakerCategory({super.key});

  @override
  State<SneakerCategory> createState() => _SneakerCategoryState();
}

class _SneakerCategoryState extends State<SneakerCategory> {
  List<String> cartImageList = [
    "assets/images/pic.svg",
    "assets/images/pic.svg",
    "assets/images/pic.svg",
    "assets/images/pic.svg",
    "assets/images/pic.svg",
    "assets/images/pic.svg",
  ];
  List<String> itemName = [
    "Polo",
    "V-Neck",
    "Henley",
    "Striped",
    "Solid",
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
                    "TSHIRTS",
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
          // Add a scrollable GridView
          Expanded(
            child: SingleChildScrollView(
              child: GridView.builder(
                shrinkWrap: true,
                physics:
                    BouncingScrollPhysics(), // Use BouncingScrollPhysics for a bounce effect
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
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
