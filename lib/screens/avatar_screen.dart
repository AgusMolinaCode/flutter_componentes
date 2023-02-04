import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yoshimura'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child:const CircleAvatar(
              child: Text('YE'),
              backgroundColor: Colors.blue
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 160,
          backgroundImage: NetworkImage('https://img.remediosdigitales.com/65dc01/hideo_pops_yoshimura/1366_2000.jpg'),
         )
      ),
    );
  }
}