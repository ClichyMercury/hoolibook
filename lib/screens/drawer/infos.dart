import 'package:biblotheque/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class InfosScreen extends StatelessWidget {
  const InfosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              padding: const EdgeInsets.all(15),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height * .1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/H-hooli-removebg-preview.png",
                          width: 100,
                          height: 100,
                        ),
                        Image.asset(
                          "assets/images/Hooli-removebg-preview.png",
                          width: 200,
                          height: 200,
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headlineMedium,
                        children: const [
                          TextSpan(
                              text: "hooli v1.01 \nbuildVersion : 0.0.37",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: const [
                          TextSpan(
                              text:
                                  "hooli is a trademark os GS Enterprise Inc.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/gslogo2.png",
                      width: 150,
                      height: 150,
                    ),
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
