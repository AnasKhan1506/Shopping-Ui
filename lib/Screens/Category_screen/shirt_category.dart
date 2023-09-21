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
      body: SingleChildScrollView(
        child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
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
    );
  }
}
