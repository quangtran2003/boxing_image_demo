library boxing_image_demo;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class BoxingImageDemo extends StatefulWidget{
  const BoxingImageDemo({super.key});

  @override
  State<BoxingImageDemo> createState() => _BoxingImageDemoState();
}

class _BoxingImageDemoState extends State<BoxingImageDemo> {
List<Color> colors=[Colors.black,Colors.blue,Colors.grey,Colors.red,Colors.purple];

  @override
  Widget build(BuildContext context) {
    return  CarouselSlider.builder(itemBuilder:(context, index, pageViewIndex){
      return     Container(
      height: 200,
        width: MediaQuery.of(context).size.width,
        color: colors[index],
      );
    } ,itemCount: colors.length, options: CarouselOptions(autoPlay: true),);
  }
}