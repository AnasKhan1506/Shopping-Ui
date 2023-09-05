import 'package:flutter/material.dart';
import 'package:shopping_store/Screens/home_screen/widgets/GridItem.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width * 1,
          color: const Color.fromARGB(255, 218, 217, 217),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, left: 20),
                    child: const Text(
                      "Hi,Folks",
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
                      icon: Icon(Icons.shopping_bag_outlined),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(25),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Search Product & Store",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("DELIVERY TO"),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("Green Way 3000, Sylhet"),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ],
                      )),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 35, top: 9),
                    child: Column(
                      children: [
                        Text("WITHIN"),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("1 Hour"),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                height: 120,
                width: 200,
                child: Center(
                  child: Text(
                    "Flat 50% Off",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 229, 189, 14)),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 120,
                width: 200,
                child: Center(
                  child: Text(
                    "Dont Miss Out!",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 250, 145, 47)),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Recommended",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
        ),
        GridItem(),
      ]),
    );
  }
}
