import 'package:biblotheque/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

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
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.headlineMedium,
                              children: const [
                                TextSpan(
                                    text: "Updates",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/images/Hooli-removebg-preview.png",
                          width: 100,
                          height: 100,
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headlineMedium,
                        children: const [
                          TextSpan(
                              text: "Vérifiez les mises à jour disponibles",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .6,
                      child: RoundedButton(
                        text: "Verifiez",
                        fontSize: 20,
                        press: () {},
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Updates are available that improve the content in warning messages that you receive when you run local executable files in your app. make sure your app is good for all users",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
