import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roll_bite/shared/components/components.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({Key? key}) : super(key: key);

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('Assets/images/background.png'),
            fit: BoxFit.cover,
            opacity: 0.20,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image(
                                image: AssetImage('Assets/images/white.png'),
                              height: 276,
                              width: double.infinity,
                            ),
                            Center(
                              child: Text(
                                'Welcome',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 32,
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Please Sign in to continue',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            CustomWidgets.socialButtonRect(
                                'Login With Facebook',
                                Color(0xff3B5998),
                                FontAwesomeIcons.facebookF,
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            CustomWidgets.socialButtonRect(
                              'Login With Google',
                              Color(0xffDF4A32),
                              FontAwesomeIcons.googlePlusG,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                'OR',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            defaultButton(
                              background: Color(0xffFB7F58),
                              margin: 15,
                              function: ()
                              {
                              },
                              text:'Login With Email',
                              color: Color(0xffffffff),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Center(
                              child: Text(
                                'Dont have an account?',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            defaultButton(
                              background: Color(0xffFB7F58),
                              margin: 100,
                              function: ()
                              {
                              },
                              text:'Sign Up',
                              color: Color(0xffffffff),
                            ),
                          ],
                        ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
