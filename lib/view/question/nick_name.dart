import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class Nickname_Screen extends StatefulWidget {
  const Nickname_Screen({Key? key}) : super(key: key);

  @override
  State<Nickname_Screen> createState() => _Nickname_ScreenState();
}

class _Nickname_ScreenState extends State<Nickname_Screen> {

  TextEditingController txtnickname = TextEditingController();
  var txtkey = GlobalKey<FormState>();

  @override

  Widget build(BuildContext context) {

    return Form(
      key: txtkey,
      child: Scaffold(resizeToAvoidBottomInset: false,

        body: Column(
          children: [
            Align(alignment: Alignment.topLeft,
              child: Container(
                height: 30.h,
                width: 55.w,
                decoration: BoxDecoration(

                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,7),
                        blurRadius: 25,
                        color: Color(0xFFD5A0FF))
                  ],
                  color: Color(0xFF9610FF),
                  borderRadius: BorderRadius.only(bottomRight:Radius.circular(1000),)
                ),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),


//

            Text("My Nickname",style: TextStyle(  color: Color(0xFF9610FF),fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(height: 5.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                style:TextStyle(color: Colors.black),
                validator: (value){
                  return value!.length < 1?'Name must be greater than two characters':null;
                },
                controller: txtnickname,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:  BorderSide( color: Color(0xFFD5A0FF)),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  fillColor: Colors.white12,
                  filled: true,
                  label: Text("Nickname",style: TextStyle(  color: Color(0xFF9610FF),),),
                ),
              ),
            ),
            SizedBox(height: 5.h),
            InkWell(
              onTap: (){

               // if(txtkey.currentState!.validate() == true){


                    //String iname = txtnickname.text;
                 //   setSHR(iname, true);


               // }
                Navigator.pushNamed(context, 'Gender');


              },
              child: Center(
                child: Container(
                  height: 8.h,
                  width: 55.w,
                  decoration: BoxDecoration(

                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0,7),
                          blurRadius: 25,
                          color: Color(0xFFD5A0FF))
                    ],
                    color: Color(0xFF9610FF),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w400)),
                  ),

                ),
              ),
            ),
            Align(alignment: Alignment.bottomRight,
              child: Container(
                height: 30.h,
                width: 55.w,
                decoration: BoxDecoration(

                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0,7),
                          blurRadius: 25,
                          color: Color(0xFFD5A0FF))
                    ],
                    color: Color(0xFF9610FF),
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(1000),)
                ),
              ),
            ),
            //SizedBox(height: 20.h,)
          ],
        ),
      ),
    );
  }

}