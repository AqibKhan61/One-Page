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
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  mbs,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.star),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 1,
          color: Colors.blueAccent,
        ),
      ],
    );
  }
}
