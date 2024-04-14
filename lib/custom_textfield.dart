import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CustomTextField({super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:  const BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(8),
          borderSide:  const BorderSide(color: Colors.transparent,
        ),
        
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      filled: true,
      fillColor: const  Color(0xffF5F6FA),
      hintText: hintText,
      hintStyle: const TextStyle(
        fontSize: 14, 
        fontWeight: FontWeight.w400
      ),
    )
    );
  }
}