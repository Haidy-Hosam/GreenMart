import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixicon,
    this.keyboardType,
    this.validator,
    this.enabled = true,
  });
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixicon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool enabled;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: widget.suffixicon,
        prefixIcon: widget.prefixIcon,
      ),
      validator: widget.validator,
      enabled: widget.enabled,
      // validator: (value) {
      //   if (value?.isEmpty == true) {
      //     return 'Please enter Your Email';
      //   }
      //   return null;
      // },
      //if (value == null || value.isEmpty) {
      //   return 'Please enter some text';
      // }
      // validator: (value) {
      //   if (value!.isEmpty) {
      //     return 'Please enter Your Email';
      //   }
      //   return null;
      // },
    );
  }
}
