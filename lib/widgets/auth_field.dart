import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;

  const AuthField({
    required this.hintText,
    required this.controller,
    this.isPassword = false,
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your $hintText';
        } else {
          return null;
        }
      },
      obscureText: isPassword,
    );
  }
}
