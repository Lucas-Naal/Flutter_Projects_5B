import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:my_first_layoyut/widgets/textSection.dart';
import 'package:my_first_layoyut/widgets/titlesection.dart';
import 'package:my_first_layoyut/widgets/button_column.dart';

void main() => runApp(const MyApp()); 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(color, Icons.call, 'CALL'),
        buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(
      title: 'My_First_Layout_5B',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My_First_Layout_5B'),
        ),
        body: ListView(
          children: [
            FlutterCarousel(
              options: CarouselOptions(
                height: 400.0,
                showIndicator: true,
                slideIndicator: const CircularSlideIndicator(),
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                        child: Image.asset(
                          'images/lake.jpg'
                          'images/lake1.jpg'
                          'images/lake2.jpg'
                          'images/lake3.jpg'
                        ));
                  },
                );
              }).toList(),
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
