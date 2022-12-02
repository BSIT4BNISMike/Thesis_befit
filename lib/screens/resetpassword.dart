import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:befit/reusable widget/reusable_widgets.dart';
import 'package:befit/standards.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
          margin: EdgeInsets.all(Standards.bounds["margin"]!),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Forgot Password?',
                  style: Standards.fontStyles["main"],
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Enter Email address',
                  style: Standards.fontStyles["subtitle"],
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "Email", Icons.person_outline, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),

                Container(
                  margin: EdgeInsets.only(top: Standards.bounds["margin"]!),
                  // Rounded button
                  child: ElevatedButton(
                    // Rounded button
                    style: ElevatedButton.styleFrom(
                      primary: Standards.colors["primaryColorDark"],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            Standards.bounds["borderRadius"]!),
                      ),
                    ),
                    // Text with icon
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.key_rounded,
                          color: Standards.colors["whiteColor"],
                        ),
                        VerticalDivider(
                          color: Standards.colors["whiteColor"],
                          width: 10,
                        ),
                        Text(
                          'Reset Password',
                          style: Standards.fontStyles["mainButtonWhite"],
                        ),
                      ],
                    ),
                    onPressed: () {
                      FirebaseAuth.instance
                          .sendPasswordResetEmail(
                              email: _emailTextController.text)
                          .then((value) => Navigator.of(context).pop());
                    },
                  ),
                ),

                // Button(context, "Reset Password", () {
                //   FirebaseAuth.instance
                //       .sendPasswordResetEmail(email: _emailTextController.text)
                //       .then((value) => Navigator.of(context).pop());
                // })
              ],
            ),
          )),
    );
  }
}
