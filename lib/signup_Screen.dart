import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roll_bite/shared/components/components.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({Key? key}) : super(key: key);

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {

  var emailcontroller = TextEditingController();
  var phonecontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var addresscontroller = TextEditingController();
  var fnamecontroller = TextEditingController();
  var lnamecontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;
  bool isConfirm = true;
  bool isrememberMe = false;


  List<DropdownMenuItem<String>> get Countries{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Bahrain"),value: "Bahrain"),
      DropdownMenuItem(child: Text("Egypt"),value: "Egypt"),
      DropdownMenuItem(child: Text("Iraq"),value: "Iraq"),
      DropdownMenuItem(child: Text("Jordan"),value: "Jordan"),
      DropdownMenuItem(child: Text("Kuwait"),value: "Kuwait"),
      DropdownMenuItem(child: Text("Lebanon"),value: "Lebanon"),
      DropdownMenuItem(child: Text("Libya"),value: "Libya"),
      DropdownMenuItem(child: Text("Mauritania"),value: "Mauritania"),
      DropdownMenuItem(child: Text("Morocco"),value: "Morocco"),
      DropdownMenuItem(child: Text("Oman"),value: "Oman"),
      DropdownMenuItem(child: Text("Palestine"),value: "Palestine"),
      DropdownMenuItem(child: Text("Qatar"),value: "Qatar"),
      DropdownMenuItem(child: Text("Saudi Arabia"),value: "Saudi Arabia"),
      DropdownMenuItem(child: Text("Sudan"),value: "Sudan"),
      DropdownMenuItem(child: Text("Syrian"),value: "Syrian"),
      DropdownMenuItem(child: Text("Tunisia"),value: "Tunisia"),
      DropdownMenuItem(child: Text("UAE"),value: "UAE"),
      DropdownMenuItem(child: Text("Yemen"),value: "Yemen"),
    ];
    return menuItems;
  }


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
                                height: 80,
                              ),
                              Image(
                                image: AssetImage('Assets/images/sblack.png'),
                                height: 50,
                                width: double.infinity,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 32,
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 40,
                              ),

                              Row(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: defaultFormField(
                                      label: 'first name',
                                      controller: fnamecontroller,
                                      suffixPressed: () {
                                        setState(() {

                                        });
                                      },
                                      type: TextInputType.name,
                                      validator: (value) {
                                        if(value==null || value.isEmpty){
                                          return 'this field is empty';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: 150,
                                    child: defaultFormField(
                                      label: 'last name',
                                      controller: lnamecontroller,
                                      suffixPressed: () {
                                        setState(() {

                                        });
                                      },
                                      type: TextInputType.name,
                                      validator: (value) {
                                        if(value==null || value.isEmpty){
                                          return 'this field is empty';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 22,
                              ),
                              defaultFormField(
                                label: 'email address',
                                controller: emailcontroller,
                                suffix: Icons.email,
                                suffixPressed: () {
                                  setState(() {

                                  });
                                },
                                type: TextInputType.emailAddress,
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

                              SizedBox(
                                height: 22,
                              ),

                              defaultFormField(
                                label: 'phone number',
                                controller: phonecontroller,
                                suffixPressed: () {
                                  setState(() {

                                  });
                                },
                                type: TextInputType.number,
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

                              Row(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: DropdownButtonFormField(
                                        decoration: InputDecoration(
                                          label: Text('Country'),
                                          floatingLabelStyle: TextStyle(
                                              color: Color(0xffFB7F58)
                                          ),
                                          // labelStyle: TextStyle(color: Color(0xffFB7F58)),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                            ),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide: BorderSide(
                                                color: Color(0xffFB7F58)
                                            ),
                                          ),
                                    ), onChanged: (value) {  }, items: Countries,
                                      
                                  ),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: 150,
                                    child: DropdownButtonFormField(
                                      decoration: InputDecoration(
                                        label: Text('City'),
                                        floatingLabelStyle: TextStyle(
                                            color: Color(0xffFB7F58)
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide: BorderSide(
                                              color: Color(0xffFB7F58)
                                          ),
                                        ),
                                      ), onChanged: (value) {  }, items: Countries,

                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 22,
                              ),
                              defaultFormField(
                                label: 'address',
                                controller: addresscontroller,
                                type: TextInputType.text,
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

                              defaultButton(
                                background: Color(0xffFB7F58),
                                width: double.infinity,
                                function: ()
                                {
                                  if (formKey.currentState!= null && formKey.currentState!.validate())
                                  {
                                    print(emailcontroller.text);
                                    print(passwordcontroller.text);
                                  }
                                },
                                text: 'Sign Up',
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
