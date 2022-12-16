import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusable_card.dart';
import 'reusable_card_child.dart';

const bottomContainerHeight = 80.0;
const activeCardColor =
    Color(0xFF282B4D); //easier than making a color in each container
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Colors.lime;

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;

  // 1 = male, 2 = female
  // void updateColor(Gender gender) {
  //   //male card pressed
  //   if (gender == Gender.male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  //   if (gender == Gender.female) {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      // body: Center(
      //   child: Text('Body Text'),
      // ),
      // floatingActionButton: Theme(
      //   data: ThemeData(
      //     floatingActionButtonTheme: FloatingActionButtonThemeData(
      //         backgroundColor: Colors.white,
      //         foregroundColor: Colors.pinkAccent),
      //   ),
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //     child: Icon(Icons.add),
      //   ),
      // ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      cardChild: ReusableCardChild(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      color: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      cardChild: ReusableCardChild(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      color: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
