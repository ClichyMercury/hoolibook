import 'package:flutter/material.dart';

import '../../consttants.dart';
import '../../widgets/book_rating.dart';
import '../../widgets/reading_card_list.dart';
import '../../widgets/two_side_rounded_button.dart';

class TradingTopics extends StatelessWidget {
  const TradingTopics({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * .1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.headlineMedium,
                              children: const [
                                TextSpan(
                                    text: "Trading",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/images/H-hooli-removebg-preview.png",
                          width: 100,
                          height: 100,
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ReadingListCard(
                            image: "assets/images/analyseTech.jpg",
                            title: "Analyse fondementale",
                            auth: "Thierry Clement",
                            rating: 4.9,
                            pressDetails: () {},
                            pressRead: () {},
                          ),
                          ReadingListCard(
                            image: "assets/images/analyseFond.jpg",
                            title: "Analyse fondemental",
                            auth: "DR investor",
                            rating: 4.8,
                            pressDetails: () {},
                            pressRead: () {},
                          ),
                          ReadingListCard(
                            image: "assets/images/bourse.jpg",
                            title: "La bourse",
                            auth: "Tradind NoStress",
                            rating: 4.8,
                            pressDetails: () {},
                            pressRead: () {},
                          ),
                          ReadingListCard(
                            image: "assets/images/traderLesPub.jpg",
                            title: "trading forex: les bases",
                            auth: "Daily Fx",
                            rating: 4.8,
                            pressDetails: () {},
                            pressRead: () {},
                          ),
                          SizedBox(width: 30),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
