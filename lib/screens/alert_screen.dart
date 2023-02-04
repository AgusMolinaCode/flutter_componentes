import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS (BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: ( context ) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Aqui se muestra el contenido'),
              SizedBox(height: 10),
              FlutterLogo(size: 120),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar', style: TextStyle(color: Colors.red),)
            ),

            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK')
            ),
          ],
        );
      }
    );
  }

  void displayDialogAndroid(BuildContext context) {
    
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: ( context ) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Aqui se muestra el contenido'),
              SizedBox(height: 10),
              FlutterLogo(size: 120),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar')
            )
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed: () => Platform.isAndroid ?
            displayDialogAndroid(context)
            :
            displayDialogIOS(context),
          child: const Text('Mostrar alerta', style:  TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),)
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    );
  }
}