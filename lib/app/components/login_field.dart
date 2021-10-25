import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final TextEditingController controller;
  final String textHint;

  const LoginField(this.controller, this.textHint);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.controller,
      cursorColor: Colors.white,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 22,
      ),
      decoration: InputDecoration(
        alignLabelWithHint: true,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        hintText: this.textHint,
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),
      ),
    );
  }
}
