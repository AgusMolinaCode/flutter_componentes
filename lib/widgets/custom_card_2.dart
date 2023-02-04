import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCard2({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      elevation: 10,
      child: Column(
        children: [
           FadeInImage(
            image:NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
          ),

          if (name != null)
          
          Container(
            alignment: AlignmentDirectional.center,
            padding:const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(name!)
          )
        ],
      ),
    );
  }
}