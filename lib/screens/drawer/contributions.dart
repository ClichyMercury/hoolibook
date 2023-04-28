import 'package:biblotheque/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class ContributionScreen extends StatelessWidget {
  const ContributionScreen({super.key});

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
                          padding: const EdgeInsets.symmetric(horizontal: 11),
                          child: RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.headlineMedium,
                              children: const [
                                TextSpan(
                                    text: "Contributions",
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
                    const SizedBox(height: 15),
                    const Text(
                      "Remerciements",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 25),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: const [
                          TextSpan(
                              text: "AFRIQUE CONCOURS TALENT",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                    Text(
                      "Bibliothèques mediathèques \n sur le site jeuneafrique.com ",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 25),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: const [
                          TextSpan(
                              text: "BIBLIOTHEQUE MUNICIPALE",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                    Text(
                      "Au Sein du foyer des jeunes de bingerville",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 25),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: const [
                          TextSpan(
                              text: "BIBLIOTHEQUE DE L'INSTITUT FRANCAIS",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                    Text(
                      "Av. Franchet d'Esperey, \n Non loin de la Pyramide \n Plateau - 01 BP 3995 Abidjan 01 \n Abidjan - Côte d’Ivoire",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 25),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: const [
                          TextSpan(
                              text: "CENTRE CULTUREL COMOE",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                    Text(
                      "Rue C2, Prolongement de l'Av \n Mermoz - Centre \n Cocody - 01 BP 1075 Abidjan 01 \n Abidjan - Côte d’Ivoire",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 25),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: const [
                          TextSpan(
                              text: "BIBLIOTHEQUE NATIONALE DE COTE D'IVOIRE",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                    Text(
                      "Bd. Carde, entre le Musée des \n Civilisations et le Ministère de la Défense \n Plateau - B.P.V. 180 Abidjan \n Abidjan - Côte d’Ivoire",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
