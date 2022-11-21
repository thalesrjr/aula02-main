import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatefulWidget {
  final Widget prefixIcon;
  final String description;
  Widget? suffixIcon;
  bool? obscureText = true;

  TextFormFieldCustom({
    super.key,
    this.suffixIcon, //opcional
    this.obscureText, //opcional
    required this.prefixIcon, //obrigatória
    required this.description, //obrigatória
  });

  @override
  State<TextFormFieldCustom> createState() => _TextFormFieldCustomState();
}

class _TextFormFieldCustomState extends State<TextFormFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText ?? false,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon ?? const SizedBox(),
          hintText: widget.description,
          labelText: widget.description),
    );
  }
}
