import 'package:biblotheque/screens/sujets/tradingTopics.dart';
import 'package:biblotheque/widgets/OptionsTile.dart';
import 'package:flutter/material.dart';

import '../sujets/devPersonTopics.dart';
import '../sujets/informatiqueTopics.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            decoration: BoxDecoration(
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headlineMedium,
                      children: [
                        TextSpan(text: "Sujets que \n vous pourriez "),
                        TextSpan(
                            text: "aimer",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                OptionsProfile(
                  icon: Icons.business,
                  data: "Trading",
                  touch: TradingTopics(),
                ),
                SizedBox(height: 30),
                OptionsProfile(
                  icon: Icons.computer,
                  data: "Programmation",
                  touch: ImformatiqueTopics(),
                ),
                SizedBox(height: 30),
                OptionsProfile(
                  icon: Icons.person,
                  data: "developpement personnel",
                  touch: DevPersonTopics(),
                ),
                SizedBox(height: 30),
                Image.asset("assets/images/Hooli-removebg-preview.png"),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
