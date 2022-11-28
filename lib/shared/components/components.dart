import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget defaultButton({
  double width = double.infinity  ,
  double size = 16 ,
  double margin = 0,
  FontWeight weight = FontWeight.w500 ,
  Color background = Colors.blue ,
  Color color = Colors.white,
  bool isUpperCase = false,
  required Function function ,
  required String text ,



}) => Container(
  height: 50,
  width: double.infinity,
  margin: EdgeInsets.symmetric(horizontal: margin),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: background,
    // border: Border.all(
    //   color: Color(0xff61BDEE),
    // ),
  ),
  child: TextButton(
    onPressed: ()
    {
      function();
    },
    child: Text(
      isUpperCase? text.toUpperCase() : text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'poppins',
        fontWeight: weight,
      ),
    ),
  ),
);


Widget defaultFormField({
  required TextEditingController controller ,
  required TextInputType type ,
  required String label ,
  String? Function(String?)? validator,
  bool isPassword = false ,
  bool obscureText = false,
  bool isClickable = true ,
  IconData? suffix ,
  void Function()? suffixPressed,
  void Function()? onTap,
  void Function(String)? onSubmit ,
  void Function(String)? onChanged,


}) => Container(
  child:   TextFormField(
    onFieldSubmitted: onSubmit,
    onChanged: onChanged,
    onTap: onTap,
    validator: validator,
    obscureText: obscureText,
    enabled: isClickable,
    controller: controller,
    keyboardType: type,
    decoration: InputDecoration(
      floatingLabelStyle: TextStyle(
        color: Color(0xffFB7F58)
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
            color: Color(0xffFB7F58)
        ),
      ),
      labelText: label,
      contentPadding: EdgeInsets.symmetric(vertical: 10 ,horizontal: 10),
      border: OutlineInputBorder(
        borderRadius:BorderRadius.circular(12),
      ),

      suffixIcon: suffix!= null ? IconButton(
        onPressed: suffixPressed ,
        icon: Icon(
            suffix,
        ),
      ) : null,
    ),

  ),
);




class CustomWidgets {
  static Widget socialButtonRect(title, color, icon, {Function? onTap , Color fontcolor = Colors.white}) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: color,
          borderRadius: BorderRadius.all(Radius.circular(10),
        ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Icon(
              icon,
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(title,
                  style: TextStyle(
                      color: fontcolor,
                      fontSize: 16,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w400,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
