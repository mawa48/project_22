import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool ispass;
  final String hintText;
  final TextInputType textInputType;
  const TextFieldInput({ Key? key,required this.textEditingController,required this.ispass,required this.hintText,required this.textInputType, }) : super(key: key);

  get inputBorder => null;

  @override
  Widget build(BuildContext context) {
    final InputBorder = OutlineInputBorder(

    );
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: ispass,
      );
  }
}