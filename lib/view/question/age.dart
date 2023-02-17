import 'dart:async';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';



class Age extends StatefulWidget {
  const Age({Key? key}) : super(key: key);

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter,
        children: [
          Container(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 10.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 7),
                              blurRadius: 25,
                              color: Color(0xFFD5A0FF))
                        ],
                        color: Color(0xFF9610FF),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(1000),
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 10.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 7),
                              blurRadius: 25,
                              color: Color(0xFFD5A0FF))
                        ],
                        color: Color(0xFF9610FF),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(1000),
                        )),
                  ),
                ),

                Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                 
                    Container(
                      height: 7.h,
                      width: 75.w,
                      decoration: BoxDecoration(
                        color: Color(0xFF9610FF),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 20,   color: Color(0xFFD5A0FF))
                        ],
                      ),
                      child: Center(
                        child: Text("Select Your Age Between ?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFffffff),
                              fontSize: 15.sp,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,

                      child: Column(
                        children: [
                          InkWell(onTap: (){

                        
                            Navigator.pushNamed(context,'love');



                          },
                            child: Container(
                              height: 7.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                color: Color(0xFF9610FF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 20,  color: Color(0xFFD5A0FF))
                                ],
                              ),
                              child: Center(
                                child: Text("18  To  20",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFffffff),
                                      fontSize:  16.sp,
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(onTap: (){
                   
                            Navigator.pushNamed(context,'love');


                          },
                            child: Container(
                              height: 7.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                color: Color(0xFF9610FF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 20, color: Color(0xFFD5A0FF))
                                ],
                              ),
                              child: Center(
                                child: Text("21  to  30",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFffffff),
                                      fontSize:  16.sp,
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(onTap: (){
                         
                            Navigator.pushNamed(context,'love');


                          },
                            child: Container(
                              height: 7.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  color: Color(0xFF9610FF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 20,color: Color(0xFFD5A0FF),)
                                ],
                              ),
                              child: Center(
                                child: Text("31  To  50",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFffffff),
                                      fontSize:  16.sp,
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(onTap: (){
           
                            Navigator.pushNamed(context,'love');

                          },
                            child: Container(
                              height: 7.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                color: Color(0xFF9610FF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 20,color: Color(0xFFD5A0FF),)
                                ],
                              ),
                              child: Center(
                                child: Text("51  To  up",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFffffff),
                                      fontSize:  16.sp,
                                    )),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 10.h,
                                width: 15.w,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 7),
                                          blurRadius: 25,
                                          color: Color(0xFFD5A0FF))
                                    ],
                                    color: Color(0xFF9610FF),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(1000),
                                    )),
                              ),
                              Container(
                                height: 10.h,
                                width: 15.w,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 7),
                                          blurRadius: 25,
                                          color: Color(0xFFD5A0FF))
                                    ],
                                    color: Color(0xFF9610FF),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(1000),
                                    )),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),

                  ],
                ),

              ],
            ),
          ),
  
        ],
      ),
    );
  }

}
