import 'package:flutter/material.dart';

class Category_Screen extends StatefulWidget {
  const Category_Screen({super.key});

  @override
  State<Category_Screen> createState() => _Category_ScreenState();
}

class _Category_ScreenState extends State<Category_Screen> {
  List Category_items = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSPCzcQup2wSgAAUqBGOZdQAUmf79S4IElmQ&usqp=CAU"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width * 1,
            color: const Color.fromARGB(255, 218, 217, 217),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 20),
                      child: const Text(
                        "Hi, Folks",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      margin: EdgeInsets.only(top: 40, right: 15),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search_sharp),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40, right: 15),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_bag_outlined),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 250),
                      child: Text(
                        "Shop",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Text(
                      "By Category",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GridView.builder(
            itemCount: Category_items.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                  ),
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
                              "${Category_items[index]}",
                              height: 30,
                              width: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
