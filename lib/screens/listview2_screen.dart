import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const['Motor', 'Chasis', 'Suspension'];

  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
      ),
      body: ListView.separated(
        itemCount: options.length ,
        itemBuilder: (context, index) => ListTile(
                title: Text(options[index]) ,
                trailing: const Icon(Icons.arrow_circle_right_outlined, color: Colors.indigo,),
                onTap: () {
                  final servicio = options[index];
                  print(servicio);
                },
              ),
        separatorBuilder: (context, index) => const Divider(),
      )
    );
  }
}