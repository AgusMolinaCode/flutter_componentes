import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard1(),
          SizedBox(height: 10),
          CustomCard2(name: 'CRF250R 2015', imageUrl: 'https://adventurebikeaustralia.com.au/wp-content/uploads/2020/07/V-22951B.jpg',),
          SizedBox(height: 10),
          CustomCard2(imageUrl: 'https://cdn.shopify.com/s/files/1/0557/8866/6959/products/LG28D94519-B957-4F31-808F-C5BC81F530F6__49890.1637837758.1280.1280.png?v=1652804441',),
          SizedBox(height: 10),
          CustomCard2(imageUrl: 'https://www.maciag-offroad.de/shop/artikelbilder/normal/139674/vertex-kolben-kit-piston-kit-gp-racer-s-choice-1.jpg',),
          SizedBox(height: 10),
          CustomCard2(imageUrl: 'https://www.rpmmoto.com.au/assets/full/V-23167C_1.jpg?20221124092112',),
          SizedBox(height: 10),
          CustomCard2(imageUrl: 'https://az-offroad.com/50625-large_default/kit-piston-vertex-honda-crf-250-2018.jpg',),
        ],
      )
    );
  }
}

