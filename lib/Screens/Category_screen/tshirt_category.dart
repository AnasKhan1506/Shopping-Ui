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
                  itemName: itemName);
            }),
      ),
    );
  }
}
