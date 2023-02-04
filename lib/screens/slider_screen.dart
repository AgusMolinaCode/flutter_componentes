import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliderScreen'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 0,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnable ? (value) {
              _sliderValue  = value;
              setState(() {});
            } : null
          ),

          // Checkbox(
          //   value: _sliderEnable,
          //   onChanged: (value) {
          //     _sliderEnable = value ?? true;
          //     setState(() {
                
          //     });
          //   }
          // ),

          // CheckboxListTile(
          //   activeColor: AppTheme.primary,
          //   title: const Text('Habilitar Slider'),
          //   value: _sliderEnable, 
          //   onChanged: (value) => setState(() {
          //     _sliderEnable = value ?? true;
          //   })
          // ),

          // Switch(
          //   value: _sliderEnable,
          //   onChanged: (value) => setState(() {
          //     _sliderEnable = value;
          //   })
          // ),

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable, 
            onChanged: (value) => setState(() {
              _sliderEnable = value;
            })
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image:const NetworkImage('https://www.xtrafondos.com/wallpapers/vertical/lionel-messi-con-el-barcelona-2969.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      )
  );
  }
}