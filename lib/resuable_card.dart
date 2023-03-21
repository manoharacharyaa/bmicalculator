import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(@required this.colour, this.cardChild); //constructor

  final Color colour; //proprty
  final Widget cardChild; //property
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
