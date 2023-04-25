import 'package:flutter/material.dart';
import 'package:my_card/screens/my_card.dart';

void main(List<String> args) {
  MyCard myCard = const MyCard();
  runApp(myCard);
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageHome(),
    );
  }
}
