import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.keyboardType, required this.controller, this.visiblePassword,
  }) : super(key: key);
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller ;
  final bool? visiblePassword;
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
      child: TextFormField(
        obscureText: visiblePassword ?? false,
        controller: controller,
        keyboardType: keyboardType,
        textInputAction: TextInputAction.next,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Lütfen alanı doldurun';
          }
          return null;
        },
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(255, 38, 37, 37),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding:const EdgeInsets.symmetric(horizontal: 18),
            focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 0.2),
              ),
              enabledBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 0.2),
              ),
              disabledBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 0.2),
              ),),
      ),
    );
  }
}
