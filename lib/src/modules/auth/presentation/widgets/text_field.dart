// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../infrastructure/consts/consts.dart';
import '../../../../infrastructure/consts/styles.dart';

class CTextField extends StatefulWidget {
  const CTextField({
    super.key,
    this.fillColor = Colors.white,
    this.hintText,
    this.cursorColor = Colors.white,
    required this.controller,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.suffixIcon,
    this.obscureText = false,
    this.errorTextStyle,
    this.prefix = const SizedBox(width: 16),
    this.style,
  });
  final ValueChanged<String>? onChanged;
  final Color? fillColor;
  final String? hintText;
  final Color? cursorColor;
  final TextEditingController controller;
  final Function(String?)? validator;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextStyle? errorTextStyle;
  final Widget prefix;
  final TextStyle? style;
  @override
  State<CTextField> createState() => _CTextFieldState();
}

class _CTextFieldState extends State<CTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: widget.style ?? TextStyles.textButton(),
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      obscuringCharacter: '*',
      validator: widget.validator != null ? (_) => widget.validator!(_) : null,
      decoration: InputDecoration(
        prefix: widget.prefix,
        errorStyle: widget.errorTextStyle,
        suffixIcon: widget.suffixIcon,
        hintText: widget.hintText,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        disabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        focusedErrorBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        contentPadding: const EdgeInsets.only(right: 16, top: 11, bottom: 11),
      ),
      onChanged: widget.onChanged,
    );
  }
}
