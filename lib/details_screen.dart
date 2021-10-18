import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: SvgPicture.asset(
                    "assets/01_food_deliver/icons/backward.svg",
                    height: 11,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/01_food_deliver/icons/menu.svg",
                    height: 11,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(6),
              height: 305,
              width: 305,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/01_food_deliver/images/image_1_big.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Vegan salad bowl \n",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      TextSpan(
                        text: "with red tomato",
                        style: TextStyle(
                          color: kTextColor.withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '\$20',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: kPrimaryColor),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus in hendrerit gravida rutrum. Enim sed faucibus turpis in eu mi bibendum neque. Lorem ipsum dolor sit amet. Eu tincidunt tortor aliquam nulla facilisi cras fermentum odio. Orci sagittis eu volutpat odio facilisis mauris sit amet. Mattis enim ut tellus elementum sagittis vitae et leo. Luctus accumsan tortor posuere ac ut. Placerat in egestas erat imperdiet sed euismod."),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 27),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(.19),
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Add to bag",
                          style: Theme.of(context).textTheme.button,
                        ),
                        SizedBox(width: 30),
                        SvgPicture.asset(
                          "assets/01_food_deliver/icons/forward.svg",
                          height: 11,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(.26),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(16),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor,
                          ),
                          child: SvgPicture.asset(
                              "assets/01_food_deliver/icons/bag.svg"),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 15,
                          child: Container(
                            alignment: Alignment.center,
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteColor,
                            ),
                            child: Text(
                              "0",
                              style:
                                  Theme.of(context).textTheme.button?.copyWith(
                                        color: kPrimaryColor,
                                        fontSize: 16,
                                      ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
