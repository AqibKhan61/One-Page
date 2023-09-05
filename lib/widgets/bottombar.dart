import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.10,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height*0.02,
        bottom: MediaQuery.of(context).size.height*0.03,
         left: MediaQuery.of(context).size.width*0.05,
        // right: MediaQuery.of(context).size.width*0.05,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
           Padding(
             padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.001),
             child: Padding(
               padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.001,bottom:MediaQuery.of(context).size.height*0.001 ),
               child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    '12 Files Selected!',
                    style: TextStyle(
                      color: Color(0xff212121),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Outfit",
                      fontStyle: FontStyle.normal,
                      fontSize: 11.0,
                    ),
                  ),
                  //SizedBox(height: MediaQuery.of(context).size.height*0.001,),
                  Text(
                    'Total Media 2.84Mb',
                    style: TextStyle(
                        color: Color(0xff797979),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Outfit",
                        fontStyle: FontStyle.normal,
                        fontSize: 9.0),
                  )
                ],
                       ),
             ),
           ),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width*0.27,
          // ),
          const Spacer(),
          Container(
            width: //110,
            MediaQuery.of(context).size.width*0.32,
            height: //50,
            MediaQuery.of(context).size.height*0.16,
            padding:  EdgeInsets.only(
              left: MediaQuery.of(context).size.width*0.05,
              top: MediaQuery.of(context).size.height*0.01,
              right: MediaQuery.of(context).size.width*0.01,
              bottom: MediaQuery.of(context).size.height*0.01,
            ),
            margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.04),
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
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.03,
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
