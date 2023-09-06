import 'package:flutter/material.dart';

class GridItem extends StatefulWidget {
  const GridItem({Key? key}) : super(key: key);

  @override
  _GridItemState createState() => _GridItemState();
}

var cartImageList = [
  "assets/images/cart1.jpg",
  "assets/images/cart2.jpg",
  "assets/images/cart3.jpg",
  "assets/images/cart4.jpg",
];

class _GridItemState extends State<GridItem> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: cartImageList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          childAspectRatio: 1,
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
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "30% Off",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                        Icon(Icons.favorite, color: Colors.redAccent),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        "${cartImageList[index]}",
                        height: 80,
                        width: 80,
                      ),
                    )
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
