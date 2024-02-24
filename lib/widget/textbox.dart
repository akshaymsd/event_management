import 'package:flutter/material.dart';

class Textbox extends StatelessWidget {
  const Textbox({
    super.key,
    required  this.controller,
    required this.hinttext,
    this.suffixicon
  });

  final TextEditingController controller;
  final String hinttext;
  final Widget? suffixicon;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(),
      obscureText: true,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade100,
          suffixIcon: suffixicon,
          filled: true,
          hintText: hinttext,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );
  }
}