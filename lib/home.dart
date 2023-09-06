import 'package:flutter/material.dart';
import 'package:onepage/widgets/box.dart';
import 'package:onepage/widgets/bottombar.dart';
import 'package:onepage/widgets/singlelist.dart';
// ignore_for_file: must_be_immutable



class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<item> items = [
    item("assets/mask_group_24.png", "App"),
    item("assets/mask_group_24.png", "Images"),
    item("assets/mask_group_24.png", "videos"),
    item("assets/mask_group_24.png", "Files"),
    item("assets/mask_group_24.png", "Imran"),
    item("assets/mask_group_24.png", "Imran"),
  ];

  List<list> lists = [
    list('assets/whatsapp.png', 'WhatsApp', '25 Mbs'),
    list('assets/group_1482.png', 'Behance', '35 Mbs'),
    list('assets/whatsapp.png', 'LinkedIn', '65 Mbs'),
    list('assets/group_1482.png', 'SnapChat', '55 Mbs'),
    list('assets/whatsapp.png', 'Spotify', '45 Mbs'),
    list('assets/group_1482.png', 'Instagram', '25 Mbs'),
    list('assets/whatsapp.png', 'FaceBook', '85 Mbs'),
  ];

  @override
  Widget build(BuildContext context) {
    var _ksize = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: const Color.fromARGB(211, 213, 241, 255),
      
      body: Container(
        height: _ksize.height,
        width: _ksize.width,
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/mask_group_12.png'),fit: BoxFit.cover)),
        child: Padding(
        padding: EdgeInsets.only(
          top: _ksize.height*0.06,         
          left: _ksize.width*0.06,
          right: _ksize.width*0.06,
        ),
        child: Column(
            children: [
               Row(
                children: [
                  const Icon(
                    Icons.arrow_back,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.04,
                  ),
                  const Text(
                    'Media Ready to Transfer',
                    style: TextStyle(
                        color: Color(0xff212121),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Outfit",
                        fontStyle: FontStyle.normal,
                        fontSize: 17.0),
                  ),
                ],
              ),
               SizedBox(
                height: _ksize.height*0.04,
              ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Box(image: 'assets/mask_group_28.png', text: 'APP'),
              //       Box(text: 'Imageskhjvhjggu', image: 'assets/mask_group_24.png'),
              //       Box(text: 'Videoojhuhuhus', image: 'assets/mask_group_24.png'),
              //       Box(text: 'Video', image: 'assets/mask_group_24.png'),
              //       Box(text: 'Images', image: 'assets/mask_group_24.png'),
              //     ],
              //   ),
              // ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Box(
                          text: items[index].text, image: items[index].img);
                    }),
              ),
               SizedBox(
                height: _ksize.height*0.05,
              ),
              Container(
                  constraints:  BoxConstraints(maxHeight: _ksize.height*0.6),
                  padding:  EdgeInsets.only(
                    top: _ksize.height*0.01,
                    right: _ksize.width*0.02,
                    left: _ksize.width*0.03,
                  ),
                  // margin: const EdgeInsets.only(
                  //   top: 8,
                  // ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: ListView.builder(
                      itemCount: lists.length,
                      itemBuilder: (contex, index) {
                        return ListItem(
                            img: lists[index].imagee,
                            title: lists[index].Title,
                            mbs: lists[index].Mbss);
                      })
                  // SingleChildScrollView(
                  //   child: Column(
                  //     children: [
                  //       ListItem(
                  //           img: 'assets/whatsapp.png',
                  //           title: 'WhatsApp',
                  //           mbs: '25 Mbs'),
                  //       ListItem(
                  //           img: 'assets/group_1482.png',
                  //           title: 'Behance',
                  //           mbs: '25 Mbs'),
                  //       ListItem(
                  //         img: 'assets/whatsapp.png',
                  //         title: 'LinkedIn',
                  //         mbs: '30 Mbs',
                  //       ),
                  //       ListItem(
                  //         img: 'assets/whatsapp.png',
                  //         title: 'SnapChat',
                  //         mbs: '35 Mbs',
                  //       ),
                  //       ListItem(
                  //         img: 'assets/group_1482.png',
                  //         title: 'Spotify',
                  //         mbs: '40 Mbs',
                  //       ),
                  //       ListItem(
                  //         img: 'assets/whatsapp.png',
                  //         title: 'Instagram',
                  //         mbs: '45 Mbs',
                  //       ),
                  //       ListItem(
                  //         img: 'assets/group_1482.png',
                  //         title: 'Facebook',
                  //         mbs: '50 Mbs',
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  ),
               SizedBox(
                height: _ksize.height*0.06,
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: const BottomBar(),
      );
      
  
  }
}

class item {
  final String img;
  final String text;
  item(this.img, this.text);
}

class list {
  final String imagee;
  final String Title;
  final String Mbss;
  list(this.imagee, this.Title, this.Mbss);
}
