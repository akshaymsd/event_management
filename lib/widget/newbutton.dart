import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  const NewButton({
    super.key, required this.controller, required this.text, required   this.onPress,
  });
  final TextEditingController controller;
  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,

      style:
      ElevatedButton.styleFrom(
          backgroundColor:
          Colors.blueAccent),
      child: Text(text,style: TextStyle(color: Colors.white),),
    );
  }
}