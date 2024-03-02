import 'package:flutter/material.dart';

class userText extends StatelessWidget {
  const userText({
    super.key, required this.controller, required this.name,
  });
  final TextEditingController controller;
  final  String name;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: name,border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
      )),

    );
  }
}
