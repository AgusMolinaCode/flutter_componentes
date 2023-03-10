import 'package:flutter/material.dart';
import '../router/app_routes.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;


    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOptions[index].name),
          leading: Icon(menuOptions[index].icon, color: AppTheme.primary,),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview1Screen() 
            //   );
            // Navigator.push(context, route);

            Navigator.pushNamed(context, menuOptions[index].route );
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOptions.length)
    );
  }
}