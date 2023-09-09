import 'package:flutter/material.dart';

import '../style/text_style.dart';

class HotDealsPage extends StatelessWidget {
  HotDealsPage({super.key, required this.height, required this.width});
  final List<String> names = ['Item1', 'item1', 'item1', 'item1', 'item1'];
  final List<String> subNames = [
    'GoesHere',
    'GoesHere',
    'GoesHere',
    'GoesHere',
    'GoesHere'
  ];
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: names.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.grey.shade100,
                            Colors.grey.shade200,
                          ]),
                      borderRadius: BorderRadius.circular(10)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(names[index],style: contentInfo(),),
                const SizedBox(
                  height: 5,
                ),
                Text(subNames[index],style:contentInfo())
              ],
            ),
          );
        },
      ),
    );
  }
}
