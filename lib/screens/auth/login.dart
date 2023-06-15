import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/utility/utility.dart';

import '../../style/style.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  InputOnChange() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colorLightPink,
        padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: AppInputDecoration("Email Address"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _passwordController,
              decoration: AppInputDecoration("Password"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: ElevatedButton(
                  style: AppButtonStyle(),
                  onPressed: () {
                    var btnSave = AuthenticationClass()
                        .Login(_emailController, _passwordController, context);
                  },
                  child: SuccessButtonChild('Login')),
            ),
          ],
        ),
      ),
    );
  }
}
