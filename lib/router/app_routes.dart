import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_max_outlined),

    MenuOption(route: 'listview1', name: 'ListViewtipo1', screen: const Listview1Screen(), icon: Icons.account_balance_outlined),

    MenuOption(route: 'listview2', name: 'ListViewtipo2', screen: const Listview2Screen(), icon: Icons.access_alarm),

    MenuOption(route: 'alert', name: 'Alerta', screen: const AlertScreen(), icon: Icons.browse_gallery_outlined),

    MenuOption(route: 'card', name: 'Card Screen', screen: const CardScreen(), icon: Icons.card_giftcard_outlined),

    MenuOption(route: 'avatar', name: 'Avatar', screen: const AvatarScreen(), icon: Icons.admin_panel_settings),
    
    MenuOption(route: 'animated', name: 'Animation', screen: const AnimatedScreen(), icon: Icons.play_arrow_outlined),

    MenuOption(route: 'inputs', name: 'Inputs', screen: const InputsScreen(), icon: Icons.input_outlined),
    
    MenuOption(route: 'slider', name: 'Sliders', screen: const SliderScreen(), icon: Icons.slideshow_outlined),

    MenuOption(route: 'Listviewbuilder', name: 'ListBuilder', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined),




  ];
  

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context ) => const HomeScreen()});

      for (final option in menuOptions) {
          appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen});
      }
    

    return appRoutes;
  }


  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home': (BuildContext context) => const HomeScreen(),
  //       'listview1': (BuildContext context) => const Listview1Screen(),
  //       'listview2': (BuildContext context) => const Listview2Screen(),
  //       'alert': (BuildContext context) => const AlertScreen(),
  //       'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
      }



}