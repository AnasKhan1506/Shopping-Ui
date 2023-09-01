import 'package:flutter/material.dart';
import 'package:shopping_store/Screens/Slider_screen/widgets/pageView.dart';
import 'package:shopping_store/Screens/home_screen/home_view.dart';
import 'package:shopping_store/constants/app_colors.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  PageController pageController = PageController();

  continueMethod() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => HomeView()),
        (Route<dynamic> route) => false);
  }

  int currentPage = 0;
  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkblue,
      appBar:
          AppBar(elevation: 0, backgroundColor: Colors.transparent, actions: [
        TextButton(
          onPressed: continueMethod,
          child: Text(
            "Skip",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ]),
      body: Stack(children: [
        PageView.builder(
          scrollDirection: Axis.horizontal,
          controller: pageController,
          itemCount: sliderScreen.length,
          onPageChanged: onChanged,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  child: Image.asset(
                    sliderScreen[index]["image"],
                    width: 450,
                    height: 450,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    (sliderScreen[index]["title"]),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    (sliderScreen[index]["description"]),
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white.withOpacity(0.5),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              (currentPage == (sliderScreen.length - 1))
                  ? Container(
                      margin: EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                        onPressed: continueMethod,
                        child: Text("Continue"),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          sliderScreen.length,
                          (index) => AnimatedContainer(
                            duration: Duration(microseconds: 200),
                            height: 10,
                            width: (index == currentPage) ? 15 : 10,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: (index == currentPage)
                                  ? Colors.deepOrange
                                  : Colors.grey,
                            ),
                          ),
                        )
                      ],
                    ),
            ],
          ),
        )
      ]),
    );
  }
}
