import'package:flutter/material.dart';
enum GenderType {male, female}
class ReUsedCard extends StatelessWidget {
  ReUsedCard({required this.colour, this.cardChild});
  final Color colour;
  final  Widget? cardChild;




  @override
  Widget build(BuildContext context) {

    return Container(
      child: cardChild,
      height: 150,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),


      ),

    );
  }
}


