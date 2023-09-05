import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 8,
        right: 7,
        left: 7,
      ),
      margin: const EdgeInsets.only(
        top: 8,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column( 
        children: [
          Row(
            children: [
              Image.asset('assets/whatsapp.png'),
              const SizedBox(
                width: 7.5,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'WhatsApp',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '25Mb',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                    
                  ),
                ],
              ),
              const SizedBox(
                width: 140,
              ),
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
          Row(
            children: [
              Image.asset('assets/group_1482.png'),
              const SizedBox(
                width: 7.5,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Behance',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '25Mb',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 150,
              ),
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
          Row(
            children: [
              Image.asset('assets/whatsapp.png'),
              const SizedBox(
                width: 7.5,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'LinkedIn',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '25Mb',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 150,
              ),
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
          Row(
            children: [
              Image.asset('assets/group_1482.png'),
              const SizedBox(
                width: 7.5,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SnapChat',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '25Mb',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 140,
              ),
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
          Row(
            children: [
              Image.asset('assets/whatsapp.png'),
              const SizedBox(
                width: 7.5,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Spotify',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '25Mb',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 155,
              ),
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
          Row(
            children: [
              Image.asset('assets/group_1482.png'),
              const SizedBox(
                width: 7.5,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Instagram',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '25Mb',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 135,
              ),
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
      ),
    );
  }
}
