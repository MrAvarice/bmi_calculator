import 'package:flutter/material.dart';
import 'constants.dart';




class InCardSymbol extends StatelessWidget {
  InCardSymbol({this.textInCard, this.symbol});
  final String? textInCard;
  final IconData? symbol;

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(symbol!,
          size: 80,
        ),
        SizedBox(
          height: 35,
          child: Text(textInCard!,
            style: kTextInCardStyle
          ),
        ),
      ],
    );
  }
}