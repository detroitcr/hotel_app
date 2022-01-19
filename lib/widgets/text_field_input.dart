import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;

  CustomTextField(
      {Key? key,
      required this.textEditingController,
      required this.textInputType,
      required this.hintText,
      this.isPass = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // we will create a inputBorder variable so store the outlineinputborder and we  in use entities like border,enabled border and focusedBorder
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));

    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        icon: Icon(Icons.email),
        //   prefixIcon: Icon(Icons.lock),
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $hintText';
        }
        return null;
      },
      //=> value.length == 0 ? 'Please Enter $hintText' : null,
      // onSaved: (value) => textEditingController.text = value,
      //   if (value == null || value.isEmpty) {
      //     return 'Please enter $hintText';
      //   }
      //   if (hintText == "Email" && !validateEmail(value)) {
      //     return 'Please Enter Valid Email';
      //   }
      //   return null;
      // },
    );
  }
}
