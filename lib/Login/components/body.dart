import 'package:flutter/material.dart';
import 'package:flutter_book/Login/components/background.dart';
import 'package:flutter_book/components/rounded_button.dart';
import 'package:flutter_book/components/rounded_input_field.dart';
import 'package:flutter_book/components/rounded_password_field.dart';
import 'package:flutter_book/home.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  bool error = false;

  void handleOnPress() async {
    setState(() {
      error = false;
    });
    if (_emailController.text == "manu@teste.com" &&
        _passwordController.text == "123456") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
      return;
    }
    setState(() {
      error = true;
    });
    return;
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
              controller: _emailController,
            ),
            RoundedPasswordField(
              onChanged: (value) {},
              controller: _passwordController,
            ),
            error
                ? Text("Erro ao fazer login",
                    style: TextStyle(
                      color: Colors.red,
                    ))
                : Container(),
            RoundedButton(
              text: "LOGIN",
              press: handleOnPress,
              textColor: Colors.white,
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
