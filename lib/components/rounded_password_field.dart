import 'package:flutter/material.dart';
import 'package:flutter_book/components/text_field_container.dart';
import 'package:flutter_book/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.controller,
  }) : super(key: key);
  @override
  _RoundedPasswordField createState() => _RoundedPasswordField();
}

class _RoundedPasswordField extends State<RoundedPasswordField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: widget.controller,
        obscureText: !showPassword,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              showPassword ? Icons.visibility : Icons.visibility_off,
              color: Theme.of(context).primaryColorDark,
            ),
            onPressed: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
