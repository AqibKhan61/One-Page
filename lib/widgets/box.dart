import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  Box({super.key, required this.text, required this.image});

  String text;
  var image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image),
              const SizedBox(
                width: 8,
              ),
              Text(
                text,
                style: const TextStyle(
                    color: Color(0xff797979),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Outfit",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
