import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool isEnabled;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: isEnabled,
      // obscureText: widget.enableObsucreToggle ? state.obscure : false,
      obscuringCharacter: '*',
      controller: controller,
      // keyboardType: widget.enableObsucreToggle
      //     ? TextInputType.visiblePassword
      //     : TextInputType.text,
      // validator: widget.validationFunc,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 13, color: Colors.black.withOpacity(.5)),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          // borderSide: const BorderSide(
          //     color: Color(0xFFD9D9D9), width: .5),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
