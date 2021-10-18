import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/details_screen.dart';
import 'constants.dart';
import 'widgets/category_title.dart';
import 'widgets/food_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
          headline5: TextStyle(fontWeight: FontWeight.bold),
          button: TextStyle(fontWeight: FontWeight.bold),
          headline6: TextStyle(fontWeight: FontWeight.bold),
          bodyText1: TextStyle(color: kTextColor),
        ),
      ),
      home: FoodDelivery(),
    );
  }
}

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottom flotting button
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/01_food_deliver/icons/plus.svg"),
          ),
        ),
      ),
      // menu button
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              top: 20.0,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/01_food_deliver/icons/menu.svg',
                  height: 11.0,
                ),
              ),
            ),
          ),
          // Title
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Simple way to find \nTasty food',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          // Menu Category
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const <Widget>[
                CategoryTitle(
                  title: 'All',
                  active: true,
                ),
                CategoryTitle(
                  title: 'Korean',
                ),
                CategoryTitle(
                  title: 'Chinese',
                ),
                CategoryTitle(
                  title: 'Italian',
                ),
                CategoryTitle(
                  title: 'Franch',
                ),
              ],
            ),
          ),
          // text-Field
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            height: 50.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: kBorderColor,
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/01_food_deliver/icons/search.svg'),
            ),
          ),
          // FoodCard Section
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                FoodCard(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }),
                    );
                  },
                  title: "Vegan salad bowl",
                  image: "assets/01_food_deliver/images/image_1.png",
                  price: 20,
                  ingredient: "Red tomato",
                  calories: "420cal",
                  description:
                      "Lorem ipsum sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                ),
                FoodCard(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }),
                    );
                  },
                  title: "Vegan salad bowl",
                  image: "assets/01_food_deliver/images/image_2.png",
                  price: 20,
                  ingredient: "Red tomato",
                  calories: "420cal",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
