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
                style: TextStyle(fontWeight: FontWeight.bold,),
                
              ),
              Text(
                'Total Media 2.84Mb',
                style: TextStyle(fontSize: 10,color: Colors.blueGrey),
              )
            ],
          ),
          const SizedBox(
            width: 50,
          ),
          const SizedBox(width: 20,),
          Container(
             height: 150,
             width: 130,
            padding: const EdgeInsets.only(
              left: 12,
              top: 7,
              right: 3,
              bottom: 7,
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
                      fontWeight: FontWeight.bold, color: Colors.blue),
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
