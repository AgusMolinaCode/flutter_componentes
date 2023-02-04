import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const['Motor', 'Chasis', 'Suspension'];

  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children:  [
          
          ...options.map(
              (servicios) => ListTile(
                title: Text(servicios) ,
                trailing: const Icon(Icons.arrow_circle_right_outlined),
              )
            ).toList(),
          
          
        ],
      )
    );
  }
}