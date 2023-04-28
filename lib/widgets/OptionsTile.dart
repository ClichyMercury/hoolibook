import 'package:flutter/material.dart';

class OptionsProfile extends StatelessWidget {
  const OptionsProfile({
    super.key,
    required this.icon,
    required this.data,
    required this.touch
  });

  final IconData icon;
  final String data;
  final Widget touch;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => touch));
      },
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.blue, width: 1.5),
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Icon(
                  icon,
                  color: Colors.brown.shade300,
                  size: 37,
                ),
              ),
              Text(
                data,
                style: TextStyle(
                    color: Colors.brown.shade300,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
