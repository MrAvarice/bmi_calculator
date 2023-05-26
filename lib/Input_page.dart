import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'InCardSymbol.dart';
import 'ReusedCard.dart';
import 'constants.dart';

enum GenderType {male, female}



class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

  class _InputPageState extends State<InputPage> {
     GenderType? selectedGender = null;

     int height = 60;
     int weight = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(

                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender = GenderType.male;
                      //updateColor(GenderType.male);
                    });
                    },
                  child: ReUsedCard(
                    cardChild: InCardSymbol(
                      textInCard: 'Male',
                      symbol: FontAwesomeIcons.mars,
                    ),
                      colour: selectedGender == GenderType.male ?  kActivatedWidgetColor: kNonActiveWidgetColor,
                  ),
                ),
              ),
           Expanded(

            child: GestureDetector(
              onTap: (){
                setState(() {
                  selectedGender = GenderType.female;
                 //updateColor(GenderType.female);
                });
              },
              child: ReUsedCard(
                colour: selectedGender == GenderType.female ?  kActivatedWidgetColor: kNonActiveWidgetColor,
                cardChild: InCardSymbol(textInCard: 'Female',
                symbol: FontAwesomeIcons.venus,
                ),
              ),
            ),
          ),
            ],
          ),
          Row(
          children: [
            Expanded(
              child: ReUsedCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('HEIGHT',
                      style: kTextInCardStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(),
                        style: kSecondaryTextFont
                        ),
                        Text('in',
                          style: kTextInCardStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Colors.red,
                        activeTrackColor: Colors.white,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                      ),
                      child: Slider(value: height.toDouble(),
                          min: 24.0,
                          max: 100.0,

                        onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });

                        },
                      ),
                    ),


                  ],
                ),
                  colour:kNonActiveWidgetColor,
              ),
            ),
          ],
        ),
          Row(
            children: [
              Expanded(

                child: ReUsedCard(
                    colour: kNonActiveWidgetColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Weight',
                    style: kTextInCardStyle,
                    ),
                    Text(
                      weight.toString(),
                      style: kTextInCardStyle,
                    ),
                    Row(
                      children: [
                          FloatingActionButton(
                            backgroundColor: Colors.red,
                            child: Icon(Icons.add),
                            onPressed: () {
                          },
                          ),
                              FloatingActionButton(
                            backgroundColor: Colors.red,
                               child: Icon(Icons.remove),
                            onPressed: () {
                            },),

    ],
                    ),


                  ],
                ),),
              ),
              Expanded(

                child: Container(
                  height: 150,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xffF29909),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),

            ],
          ),
          Expanded(
            child: Container(
              height: kBottomContainerHeight,
              color:  Theme
                  .of(context)
                  .primaryColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
            ),
          )
    ],
      ),
    );
  }
}



