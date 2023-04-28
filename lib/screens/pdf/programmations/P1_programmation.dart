import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class P1programmation extends StatefulWidget {
  const P1programmation({super.key});

  @override
  State<P1programmation> createState() => _P1programmationState();
}

class _P1programmationState extends State<P1programmation> {
  late PdfController pdfController;
  loadController() async {
    pdfController = PdfController(
        document: PdfDocument.openAsset(
            "assets/pdf/programmations/HTML5NotesForProfessionals.pdf"));
    return pdfController;
  }

  @override
  void initState() {
    super.initState();
    loadController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset("assets/images/Hooli-removebg-preview.png"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
          child: PdfView(
        controller: pdfController,
      )),
    );
  }
}
