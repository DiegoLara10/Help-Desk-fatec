import 'package:flutter/material.dart';
import 'package:help_desk_fatec/widgets/widget_text.dart';

class MyInput extends StatelessWidget {
  TextEditingController controller;
  MyInput({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: null,
    );
  }
}
