import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: camel_case_types
class fInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final String? label;
  final bool isPassword;
  final bool isCircular;
  final int? maxLength;
  final TextInputType keyboardType;
  final FocusNode? focusNode;
  final bool autofocus;

  final Color placeholderColor;
  final Color labelColor;
  final Color fillColor;
  final Color errorColor;
  final Color borderColor;
  final Color borderErrorColor;
  final Color borderFocusColor;
  final Color borderEnabledColor;

  final Widget? leading;
  final Widget? trailing;

  final void Function()? trailingTapped;
  final String? Function(String?)? validatorCallback;
  final void Function(String)? onFieldSubmitted;

  fInputField({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.label,
    this.placeholderColor = Colors.grey,
    this.labelColor = Colors.grey,
    this.fillColor = Colors.white,
    this.errorColor = const Color(0xFFBF1515),
    this.borderColor = Colors.black45,
    this.borderErrorColor = Colors.red,
    this.borderFocusColor = Colors.black,
    this.borderEnabledColor = Colors.black45,
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.validatorCallback,
    this.isPassword = false,
    this.isCircular = true,
    this.maxLength,
    this.keyboardType = TextInputType.text,
    this.focusNode,
    this.autofocus = false,
    this.onFieldSubmitted,
  }) : super(key: key);

  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  final underlineBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  get borderType => isCircular ? circularBorder : underlineBorder;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(height: 1.5),
      obscureText: isPassword,
      maxLength: maxLength,
      keyboardType: keyboardType,
      autofocus: autofocus,
      focusNode: focusNode,
      validator: validatorCallback,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        hintText: label == null ? placeholder : '',
        hintStyle: TextStyle(
          color: placeholderColor,
          letterSpacing: 1,
        ),
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 18,
          letterSpacing: 1,
          color: labelColor,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        filled: true,
        fillColor: fillColor,
        prefixIcon: leading,
        errorStyle: TextStyle(
          color: errorColor,
          letterSpacing: 0.5,
        ),
        suffixIcon: trailing != null
            ? GestureDetector(
                child: trailing,
                onTap: trailingTapped,
              )
            : null,
        border: borderType.copyWith(
          borderSide: BorderSide(color: borderColor),
        ),
        errorBorder: borderType.copyWith(
          borderSide: BorderSide(color: borderErrorColor),
        ),
        focusedBorder: borderType.copyWith(
          borderSide: BorderSide(color: borderFocusColor),
        ),
        enabledBorder: borderType.copyWith(
          borderSide: BorderSide(color: borderEnabledColor),
        ),
      ),
    );
  }
}
