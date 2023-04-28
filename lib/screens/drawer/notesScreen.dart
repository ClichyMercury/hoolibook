import 'package:flutter/material.dart';

import '../../widgets/reading_card_list.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

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
                                    text: "Notes",
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
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ReadingListCard(
                              image: "assets/images/phpMaster.jpg",
                              title: "PHP et MySQL: mastercalss",
                              auth: "Pierre Giraud",
                              rating: 4.9,
                              pressDetails: () {},
                              pressRead: () {},
                            ),
                            TextField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 2,
                                      color: Color.fromRGBO(178, 188, 152, 1)),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            ReadingListCard(
                              image: "assets/images/traderLesPub.jpg",
                              title: "trading forex: les bases",
                              auth: "Daily Fx",
                              rating: 4.8,
                              pressDetails: () {},
                              pressRead: () {},
                            ),
                            TextField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(178, 188, 152, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ]),
                    )
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
