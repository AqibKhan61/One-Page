import 'package:flutter/material.dart';
import 'package:onepage/widgets/box.dart';
import 'package:onepage/widgets/bottombar.dart';
import 'package:onepage/widgets/singlelist.dart';
// ignore_for_file: must_be_immutable

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<item> items = [
    item("assets/galery.svg", "App"),
    item("assets/galery.svg", "Images"),
    item("assets/galery.svg", "videos"),
    item("assets/galery.svg", "Files"),
    item("assets/galery.svg", "Imran"),
    item("assets/galery.svg", "Imran"),
  ];

  List<list> lists = [
    list('assets/whatsapp.png', 'WhatsApp', '25 Mbs'),
    list('assets/whatsapp.png', 'Behance', '35 Mbs'),
    list('assets/whatsapp.png', 'LinkedIn', '65 Mbs'),
    list('assets/whatsapp.png', 'WhatsApp', '25 Mbs'),
    list('assets/whatsapp.png', 'Behance', '35 Mbs'),
    list('assets/whatsapp.png', 'LinkedIn', '65 Mbs'),
    
  ];

  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: ksize.height,
        width: ksize.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mask_group_12.png'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: EdgeInsets.only(
            top: ksize.height * 0.06,
            left: ksize.width * 0.06,
            right: ksize.width * 0.06,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back,
                  ),
                  SizedBox(
                    width: ksize.width * 0.04,
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
                height: ksize.height * 0.02,
              ),

              SizedBox(
                
                
                
                height: ksize.height*0.06,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Box(
                          text: items[index].text, image: items[index].img);
                    }),
              ),
               SizedBox(
                height: ksize.height * 0.03,
              ),
              Container(
                
                height:ksize.height * 0.6 ,
                 
                
                  
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      8),
                    ),
                  
                  child: 
                  
              
                  Padding(
                    padding:    EdgeInsets.only(
                                      top: ksize.height * 0.01,
                                      right: ksize.width * 0.02,
                                      left: ksize.width * 0.03,
                                    ),
                    child:
                              ListView.builder(
                        itemCount: lists.length,
                        itemBuilder: (contex, index) {
                          return
                    ListItem(
                              img: lists[index].imagee,
                              title: lists[index].Title,
                              mbs: lists[index].Mbss);
                        }),
                  )
              
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
