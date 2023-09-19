import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridItem extends StatefulWidget {
  const GridItem({Key? key}) : super(key: key);

  @override
  _GridItemState createState() => _GridItemState();
}

var cartImageList = [
  "assets/images/pic.svg",
  "assets/images/pic.svg",
  "assets/images/pic.svg",
  "assets/images/pic.svg",
  "assets/images/pic.svg",
  "assets/images/pic.svg",
//   "assets/images/cart3.jpg",
//   "assets/images/cart4.jpg",
];
List<String> itemName = [
  "Polo Tshirt",
  " Baggy Jeans",
  "Chinos",
  " Sneakers",
  "Jordan",
  " Shirt"
];
var itemPrice = [" \$20", "\$30", "\$35", "\$70", "\$50", "\$25"];

class _GridItemState extends State<GridItem> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                            icon: Icon(Icons.favorite_border_outlined))
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
                              "${cartImageList[index]}",
                              height: 60,
                              width: 60,
                            ),
                          ),
                          // padding: EdgeInsets.only(bottom: 40),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 55, top: 65),
                          child: Text(
                            itemName[index],
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w700),
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
                                  itemPrice[index],
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
        },
      ),
    );
  }
}
