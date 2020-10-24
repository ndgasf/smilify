import 'package:flutter/material.dart';

Container editTextStyle(var hintText, {isPassword = false}) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
    child: TextFormField(
      obscureText: isPassword,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(26, 18, 4, 18),
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white, width: 0.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white, width: 0.0),
        ),
      ),
    ),
  );
}
