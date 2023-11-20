import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/theme/theme_helper.dart';

import '../theme/theme_helper.dart';

class CustomTextField extends StatelessWidget{
  const CustomTextField({this.controller, this.hintText, this.readOnly, this.textAlign, this.keyboardType, this.prefixText, this.onTap, this.suffixIcon, this.onChanged, this.fontSize, this.autoFocus});

  final TextEditingController? controller;
  final String? hintText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final String? prefixText;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final double? fontSize;
  final bool? autoFocus;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      readOnly: readOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      keyboardType: keyboardType,
      onChanged: onChanged,
      style: TextStyle(fontSize: fontSize),
      autofocus: autoFocus ?? false,
      decoration: InputDecoration(
        isDense: true,
        prefixText: prefixText,
        suffix: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: CupertinoColors.tertiarySystemBackground),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0XFF81F200),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color:Color(0XFF231F20),
            width: 2,
          ),
        ),
      ),
    );
  }

}