import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style/style.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [

            TextFormField(
              onChanged:(Textvalue) {
              },

              decoration: AppInputDecoration("Email Address"),
            ),
            SizedBox(height: 20,),
            TextFormField(
              onChanged: (Textvalue){
                },
              decoration: AppInputDecoration("Password"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: ElevatedButton(
                  style: AppButtonStyle(),
                  onPressed: () {

                  },
                  child: SuccessButtonChild('Login')),
            ),
          ],
        ),
      ),
    );
  }
}
