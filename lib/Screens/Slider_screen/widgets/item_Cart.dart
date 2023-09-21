import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCart extends StatefulWidget {
  final List<String> cartImageList;
  final List<String> itemPriceList;
  final List<String> itemName;
  final int index;

  const ItemCart({
    Key? key,
    required this.cartImageList,
    required this.itemPriceList,
    required this.itemName,
    required this.index,
  }) : super(key: key);

  @override
  State<ItemCart> createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 226, 225, 225),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 27, 26, 26),
              blurRadius: 4,
              spreadRadius: 0.2,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "30% Off",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border_outlined),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 40, left: 30),
                      child: SvgPicture.asset(
                        "${widget.cartImageList[0]}", // Use widget.cartImageList[0] or iterate through the list
                        height: 60,
                        width: 60,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 55, top: 65),
                    child: Text(
                      "${widget.itemName[widget.index]}", // Replace with your item name
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 88),
                    height: 20,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Unit",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "${widget.itemPriceList[widget.index]}", // Use widget.itemPriceList[0] or iterate through the list
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 68, left: 75),
                    child: TextButton(
                      onPressed: () {
                        print("hi");
                      },
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.black,
                        child: Text(
                          "+",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
