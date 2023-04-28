import 'package:flutter/material.dart';
import 'package:biblotheque/screens/pdf/programmations/P1_programmation.dart';
import '../../widgets/reading_card_list.dart';

class ImformatiqueTopics extends StatelessWidget {
  const ImformatiqueTopics({super.key});

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
                                  text: "Programmation",
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
                          image: "assets/images/phpMaster.jpg",
                          title: "PHP et MySQL: mastercalss",
                          auth: "Pierre Giraud",
                          rating: 4.9,
                          pressDetails: () {},
                          pressRead: () {},
                        ),
                        ReadingListCard(
                          image: "assets/images/html.jpg",
                          title: "HTML 5: Professionnals",
                          auth: "GoalKicker",
                          rating: 4.8,
                          pressDetails: () {},
                          pressRead: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) =>
                                        const P1programmation()));
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/css.jpg",
                          title: "CSS 3: Profsssionals",
                          auth: "GoalKicker",
                          rating: 4.8,
                          pressDetails: () {},
                          pressRead: () {},
                        ),
                        ReadingListCard(
                          image: "assets/images/php.jpg",
                          title: "PHP Professionals",
                          auth: "GoalKicker",
                          rating: 4.8,
                          pressDetails: () {},
                          pressRead: () {},
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}
