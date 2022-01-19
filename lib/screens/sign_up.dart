import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_ui/screens/login_screen.dart';
import 'package:hotel_ui/utils/color.dart';
import 'package:hotel_ui/widgets/text_field_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = new GlobalKey<FormState>();
  // for email text field controller
  final TextEditingController _emailcontroller = TextEditingController();

  // for password text field controller
  final TextEditingController _passwordcontroller = TextEditingController();
  // final TextEditingController _biocontroller = TextEditingController();
  final TextEditingController _usernamecontroller = TextEditingController();

  @override
  // for permanently remove or unmounted

  signUp() {
    final form = _formKey.currentState;

    String uname = _usernamecontroller.text;
    String email = _emailcontroller.text;
    String password = _passwordcontroller.text;
    //if (form!.validate()) {
    //alertDialog(context, "OK");
    // print(uname);
    //}
    // if (uname.isEmpty) {
    //   alertDialog(context, "Please Enter User Name");
    // } else if (email.isEmpty) {
    //   alertDialog(context, "Please Enter Your E-Mail");
    // } else if (password.isEmpty) {
    //   alertDialog(context, "Please Enter Your Password");
    // }
  }

  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    // _biocontroller.dispose();
    _usernamecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SafeArea(
          // we need to some adding padding
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 34, vertical: 40),
            width: double.infinity,
            child: Column(
              // centered like horizontal direction x axis
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // svg image
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  height: 64,
                ),
                SizedBox(
                  height: 24,
                ),
                // textfield input user
                CustomTextField(
                  // we have to create a variable for text editing controller
                  textEditingController: _usernamecontroller,
                  textInputType: TextInputType.name,
                  hintText: 'Enter Your User Name',
                ),
                SizedBox(
                  height: 24,
                ),
                // textfield input email
                CustomTextField(
                  // we have to create a variable for text editing controller
                  textEditingController: _emailcontroller,
                  textInputType: TextInputType.emailAddress,
                  hintText: 'Enter Your E-mail',
                ),
                SizedBox(
                  height: 24,
                ),
                // textfield input password
                CustomTextField(
                  // we have to create a variable for text editing controller
                  textEditingController: _passwordcontroller,
                  textInputType: TextInputType.visiblePassword,
                  hintText: 'Enter Your Password',
                  isPass: true,
                ),
                SizedBox(
                  height: 24,
                ),
                // button login
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      print("cr");
                    }
                  },
                  child: Container(
                    child: TextButton(
                      child: Text('Sign Up-in'),
                      onPressed: signUp(),
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      color: blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                // for creating spacing in upper side
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
                // Transitioning to signing up

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text("Don't have an account"),
                      padding: EdgeInsets.symmetric(vertical: 8),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        }));
                      },
                      child: Container(
                        child: Text(
                          'Login up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ), // body: Center(
      //   child: Text('From Login Screen'),
      // ),
    );
  }
}
