import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../themes/app_colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.onPressed,
      this.passwordfield,
      this.showSuffixicon,
      this.controller,
      this.suffix,
      this.validator,
      this.inputType,
      this.lines,
      this.onTap,
      this.readOnly,
      this.prefix,
      required this.label,
      this.enable});
  final TextEditingController? controller;
  final String? hintText;
  final bool? showSuffixicon;
  final bool? enable;
  final Function? onPressed;
  final Function? onTap;
  final bool? passwordfield;
  final Widget? suffix;
  final Function(String)? validator;
  final TextInputType? inputType;
  final int? lines;
  final Widget? prefix;
  final bool? readOnly;
  final Widget? label;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showpassword = true;
  late bool showPrefixIcon;

  @override
  void initState() {
    showPrefixIcon = widget.showSuffixicon ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(6),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator == null
            ? null
            : (val) => widget.validator!(val ?? ""),
        obscureText: widget.passwordfield == true ? showpassword : false,
        keyboardType: widget.inputType ?? TextInputType.text,
        maxLines: widget.passwordfield == true ? 1 : widget.lines,
        decoration: InputDecoration(
            filled: true,
            label: widget.label,
            labelStyle: TextStyle(),
            fillColor: AppColors.backgroundcolor,
            prefixIcon: showPrefixIcon ? widget.prefix : null,
            suffixIcon: widget.passwordfield == true
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showpassword = !showpassword;
                      });
                    },
                    icon: showpassword
                        ? const Icon(
                            FontAwesomeIcons.eyeSlash,
                            size: 20,
                          )
                        : const Icon(Icons.remove_red_eye))
                : widget.suffix,
            border: OutlineInputBorder(
                borderSide: const BorderSide(
              color: AppColors.greyText,
              width: 0.3,
            )),
            hintText: widget.hintText,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.blue,
                width: 0.3,
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
              color: AppColors.greyText,
              width: 0.3,
            )),
            disabledBorder: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.all(15),
            hintStyle: TextStyle(
              color: Colors.grey,
            )),
      ),
    );
  }
}
