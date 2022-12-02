import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:befit/reusable widget/reusable_widgets.dart';
import 'package:befit/screens/Login.dart';
import 'package:befit/standards.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/gestures.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController textareaDOB = TextEditingController();
  DateTime currentDate = DateTime.now();
  bool terms = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1980),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate) {
      setState(() {
        currentDate = pickedDate;
      });
    }
  }

  @override
  void initState() {
    textareaDOB.text = 'Date of Birth';
    super.initState();
  }

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
                  'Hey there',
                  style: Standards.fontStyles["subtitle"],
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Create an Account',
                  style: Standards.fontStyles["main"],
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "Username", Icons.person, false, _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "Email", Icons.email, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),

                TextField(
                  controller: textareaDOB,
                  decoration: InputDecoration(
                    hintText: 'Date of Birth',
                    hintStyle: Standards.fontStyles["subtitle"],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          Standards.bounds["borderRadius"]!),
                    ),
                    prefixIcon: const Icon(
                      Icons.date_range,
                      color: Colors.grey,
                    ),
                  ),
                  readOnly: true,
                  onTap: () {
                    _selectDate(context);
                    textareaDOB.text =
                        '${currentDate.day}/${currentDate.month}/${currentDate.year}';
                  },
                ),
                // Space between
                const SizedBox(
                  height: 20,
                ),
                // Space Password
                reusableTextField(
                    "Password", Icons.lock, true, _passwordTextController),
                // Space between
                const SizedBox(
                  height: 20,
                ),
                Container(
                  // margin: EdgeInsets.only(top: Standards.bounds["margin"]!),
                  child: CheckboxListTile(
                    title: Text(
                      'I agree to the Terms and Conditions',
                      style: Standards.fontStyles["subtitle"],
                    ),
                    value: terms,
                    onChanged: (value) {
                      setState(() {
                        terms = value!;
                      });
                    },
                  ),
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
                        Text(
                          'Register',
                          style: Standards.fontStyles["mainButtonWhite"],
                        ),
                      ],
                    ),
                    onPressed: () {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _emailTextController.text,
                              password: _passwordTextController.text)
                          .then((value) {
                        print("Created New Account");
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      }).onError((error, stackTrace) {
                        print("Error ${error.toString()}");
                      });
                    },
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: Standards.bounds["margin"]!),
                    child: Row(children: const <Widget>[
                      Expanded(child: Divider()),
                      Text('Or'),
                      Expanded(child: Divider()),
                    ])),
                Container(
                  // margin: EdgeInsets.only(top: Standards.bounds["margin"]!),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.facebookSquare,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          // TODO: implement facebook login
                          print('Facebook Login Button Pressed');
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.googlePlusSquare,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          // TODO: implement google login
                          print('Google Login Button Pressed');
                        },
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: Standards.fontStyles["subtitle"],
                    children: [
                      TextSpan(
                        text: 'Login',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ));
                          },
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                // Button(context, "Sign Up", () {
                //   FirebaseAuth.instance
                //       .createUserWithEmailAndPassword(
                //           email: _emailTextController.text,
                //           password: _passwordTextController.text)
                //       .then((value) {
                //     print("Created New Account");
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => HomeScreen()));
                //   }).onError((error, stackTrace) {
                //     print("Error ${error.toString()}");
                //   });
                // })
              ],
            ),
          )),
    );
  }
}
