import 'package:flutter/material.dart';

class CustomPassFormField extends StatefulWidget {
  const CustomPassFormField({
    super.key,
    this.hintText,
    this.posticon,
    this.suffixicon,
    this.keyboardType,
    this.validator,
  });

  final String? hintText;
  final Widget? posticon;
  final Widget? suffixicon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  @override
  State<CustomPassFormField> createState() => _CustomPassFormFieldState();
}

class _CustomPassFormFieldState extends State<CustomPassFormField> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _isObscure,
      keyboardType: TextInputType.visiblePassword,
      // keyboardType: TextInputType.phone,
      // keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: widget.posticon,
        suffixIcon:
            widget.suffixicon ??
            IconButton(
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
              icon: Icon(
                _isObscure
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
            ),
      ),
            validator: widget.validator,

    );
  }
}
