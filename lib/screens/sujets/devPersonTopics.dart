import 'package:flutter/material.dart';

import '../../widgets/reading_card_list.dart';

class DevPersonTopics extends StatelessWidget {
  const DevPersonTopics({super.key});

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
                                  text: "Developpement\npersonnel",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/images/H-hooli-removebg-preview.png",
                        width: 60,
                        height: 60,
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
                          image: "assets/images/splm.jpg",
                          title: "Seduire par la ...",
                          auth: "Jean Dumas",
                          rating: 4.9,
                          pressDetails: () {},
                          pressRead: () {},
                        ),
                        ReadingListCard(
                          image: "assets/images/dZaUN.jpg",
                          title: "De zero à un",
                          auth: "Peter Thiel",
                          rating: 4.8,
                          pressDetails: () {},
                          pressRead: () {},
                        ),
                        ReadingListCard(
                          image: "assets/images/power.jpg",
                          title: "P O W E R",
                          auth: "Robert Greene",
                          rating: 4.9,
                          pressDetails: () {},
                          pressRead: () {},
                        ),
                        ReadingListCard(
                          image: "assets/images/21loisDuLearderShip.jpeg",
                          title: "21 laws of leardership",
                          auth: "john C. Maxweel",
                          rating: 4.8,
                          pressDetails: () {},
                          pressRead: () {},
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ))
        ]),
      ),
    );
  }
}
