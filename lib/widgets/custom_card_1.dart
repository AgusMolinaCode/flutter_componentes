import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          
          const ListTile(
            leading: Icon(Icons.tiktok_outlined, color: Colors.blue),
            title: Text('Titulo Principal'),
            subtitle: Text('Laborum labore commodo dolor esse ea elit duis aliqua deserunt. Sunt excepteur velit proident duis esse velit labore labore in laboris duis nulla.'),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),  
                TextButton(onPressed: () {}, child: const Text('OK')),
              ],
            ),
          )
        ],
      )
    );
  }
}