import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function handler;

  const RoundIconButton({super.key, required this.icon, required this.handler});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => handler(),
      onLongPress: () => handler(),
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
