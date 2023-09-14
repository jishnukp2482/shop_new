import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class OtptextField extends StatelessWidget {
  const OtptextField(
      {super.key, required this.controller, required this.autoFocus});
  final TextEditingController controller;
  final bool autoFocus;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 40,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: AppColors.blue,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          counterText: "",
          hintStyle: TextStyle(color: AppColors.black, fontSize: 20),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
