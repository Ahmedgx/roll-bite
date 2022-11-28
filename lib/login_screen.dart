import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roll_bite/shared/components/components.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;
  bool isrememberMe = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffFCFCFA),
              image: DecorationImage(
                  image: AssetImage('Assets/images/sushi2.png'),
                  opacity: 10,
                  alignment: Alignment.bottomRight
              ),
            ),
          ),
        Container(
            // height: double.infinity,
            // width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Assets/images/sushi1.png'),
                  opacity: 10,
                  alignment: Alignment.topLeft
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
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 150,
                              ),
                              Image(
                                  image: AssetImage('Assets/images/sblack.png'),
                                height: 50,
                                width: double.infinity,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 32,
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 60,
                              ),

                              defaultFormField(
                                label: 'email address',
                                controller: emailcontroller,
                                type: TextInputType.emailAddress,
                                suffix: Icons.email,
                                suffixPressed: () {
                                  setState(() {
                                  });
                                },
                                validator: (value) {
                                  if(value==null || value.isEmpty){
                                    return 'this field is empty';
                                  }
                                  return null;
                                },
                              ),

                              SizedBox(
                                height: 22,
                              ),

                              defaultFormField(
                                obscureText: isPassword,
                                label: 'password',
                                controller: passwordcontroller,
                                type: TextInputType.visiblePassword,
                                validator: (value) {
                                  if(value==null || value.isEmpty){
                                    return 'this field is empty';
                                  }
                                  return null;
                                },
                                suffix: isPassword? Icons.visibility_off : Icons.visibility,
                                isPassword: isPassword,
                                suffixPressed: ()
                                {
                                  setState(()
                                  {
                                    isPassword = !isPassword;
                                  });
                                },
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                      value: isrememberMe,
                                      onChanged: (value){
                                        setState(() {
                                          isrememberMe = value! ;
                                        });
                                      },
                                      fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                        return isrememberMe ? Color(0xffFB7F58) : Color(0xffFB7F58) ;
                                      })
                                  ),
                                  Text(
                                    'Remember me',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff616161),

                                    ),
                                  ),
                                  Spacer(),
                                  TextButton(onPressed: (){},
                                    child: Text(
                                      'Forgotten password?',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff616161),
                                      ),
                                    ),
                                  )
                                ],
                              ),

                              SizedBox(
                                height: 60,
                              ),

                              defaultButton(
                                background: Color(0xffFB7F58),
                                function: ()
                                {
                                  if (formKey.currentState!= null && formKey.currentState!.validate())
                                  {
                                    print(emailcontroller.text);
                                    print(passwordcontroller.text);
                                  }
                                },
                                text: 'Log in',
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Not a user?',
                                  ),
                                  TextButton(onPressed: ()
                                  {

                                  },
                                    child: Text(
                                      'Sign up',
                                      style: TextStyle(
                                        color: Color(0xffFB7F58),
                                      ),
                                    ),
                                  ),
                                ],
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
        ],
      ),
    );
  }
}
