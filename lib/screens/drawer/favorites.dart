import 'package:flutter/material.dart';

import '../../../consttants.dart';
import '../../../widgets/book_rating.dart';
import '../../../widgets/reading_card_list.dart';
import '../../../widgets/two_side_rounded_button.dart';

class FavoritesTopics extends StatelessWidget {
  const FavoritesTopics({super.key});

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
                                    text: "Favoris",
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
                    Center(
                      child: Text("Pas de favoris ajoutés "),
                    )
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
