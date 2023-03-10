import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activecardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    activecardColour,
                    IconContent(
                      FontAwesomeIcons.mars,
                      'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    activecardColour,
                    IconContent(
                      FontAwesomeIcons.venus,
                      'FEMALE'
                    )
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Expanded(
              child: ReusableCard(activecardColour),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(activecardColour),
                ),
                Expanded(
                  child: ReusableCard(activecardColour),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent(this.icon, this.label); //constructor
  final IconData icon; //property
  final String label; //property

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

//Creating a ReuableCard By Refractoring
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
