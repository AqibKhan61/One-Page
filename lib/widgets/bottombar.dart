import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75,
      padding: const EdgeInsets.only(
        top: 17,
        bottom: 15,
        left: 20,
        right: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '12 Files Selected!',
                style: TextStyle(
                  color: Color(0xff212121),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Outfit",
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0,
                ),
              ),
              Text(
                'Total Media 2.84Mb',
                style: TextStyle(
                    color: Color(0xff797979),
                    fontWeight: FontWeight.w300,
                    fontFamily: "Outfit",
                    fontStyle: FontStyle.normal,
                    fontSize: 11.0),
              )
            ],
          ),
          const SizedBox(
            width: 50,
          ),
          const SizedBox(
            width: 50,
          ),
          Container(
            width: 118,
            height: 50,
            padding: const EdgeInsets.only(
              left: 18,
              top: 7,
              right: 3,
              bottom: 5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 215, 243, 239),
            ),
            child: Row(
              children: [
                const Text(
                  'Send Now',
                  style: TextStyle(
                      color: Color(0xff4062f5),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Outfit",
                      fontStyle: FontStyle.normal,
                      fontSize: 12.0),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset('assets/group_1482.png'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
