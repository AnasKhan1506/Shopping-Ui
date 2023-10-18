import 'package:flutter/material.dart';
import 'package:shopping_store/Screens/Slider_screen/widgets/item_Cart.dart';

class TshirtCategory extends StatefulWidget {
  const TshirtCategory({super.key});

  @override
  State<TshirtCategory> createState() => _TshirtCategoryState();
}

class _TshirtCategoryState extends State<TshirtCategory> {
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
            margin: EdgeInsets.all(50),
            height: 500.0, // Adjust the height as needed
            color: Colors.blue, // Set a background color for the container
            // Add any content you want within this container
            child: Center(
              child: Text(
                "Your Container Content",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
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
