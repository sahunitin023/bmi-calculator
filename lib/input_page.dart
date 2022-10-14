import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

const activeCardColor = Color(0xFf1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomBoxHeight = 80.0;
const bottomBoxColor = Color(0xFFEB1555);

class _InputPageState extends State<InputPage> {
  double userHeight = 120.0;
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  void updateColor(int gen) {
    if (gen == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    if (gen == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: const IconContent(
                        gender: 'MALE',
                        genderIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: const IconContent(
                        gender: 'FEMALE',
                        genderIcon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8398)),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '$userHeight CM',
                    style: const TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Slider(
                    thumbColor: bottomBoxColor,
                    value: userHeight,
                    min: 120,
                    max: 200,
                    divisions: 80,
                    onChanged: (value) {
                      setState(() {
                        userHeight = value;
                      });
                    },
                    activeColor: Colors.white,
                    inactiveColor: const Color(0xFF8D8398),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: Text('data'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: Text('data'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: bottomBoxColor,
            width: double.infinity,
            height: bottomBoxHeight,
          )
        ],
      ),
    );
  }
}
