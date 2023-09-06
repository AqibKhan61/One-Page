import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  ListItem(
      {super.key, required this.img, required this.title, required this.mbs});

  var img;
  String title;
  String mbs;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(img),
            const SizedBox(
              width: 7.5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Color(0xff212121),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Outfit",
                      fontStyle: FontStyle.normal,
                      fontSize: 15.0),
                ),
                Text(
                  mbs,
                  style: const TextStyle(
                      color:Color(0xff797979),
                      fontWeight: FontWeight.w300,
                      fontFamily: "Outfit",
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0),
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.star),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Divider(
          thickness: 1,
          color: Color(0xff797979),
        ),
        
      ],
    );
  }
}
