import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../provider/home_provider.dart';

class love extends StatefulWidget {
  const love({Key? key}) : super(key: key);

  @override
  State<love> createState() => _loveState();
}

class _loveState extends State<love> {
  Home_Provider? home_providerT;
  Home_Provider? home_providerF;

  @override
  Widget build(BuildContext context) {
    home_providerF = Provider.of<Home_Provider>(context, listen: false);
    home_providerT = Provider.of<Home_Provider>(context, listen: true);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 15.h,
              width: 100.w,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 7),
                        blurRadius: 25,
                        color: Color(0xFFD5A0FF))
                  ],
                  color: Color(0xFF9610FF),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(1500),bottomRight:Radius.circular(1500),
                  )),
            ),
          ),
          Column(
            children: [
              Container(
                height: 15.h,
                width: 100.w,
              ),
              Text(
                "Select Your Ideal Match ?",
                style: TextStyle(
                    color: Color(0xFF9610FF),
                    fontWeight: FontWeight.bold,
                    fontSize: 22.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'interest');
                    },
                    child: Container(
                      height: 27.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Color(0xFFD5A0FF))),
                      child: Image.asset("assets/images/love.png"),
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'interest');
                    },
                    child: Container(
                      height: 27.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 2,
                            color: Color(0xFFD5A0FF),
                          )),
                      child: Image.asset("assets/images/friend.png"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'interest');
                    },
                    child: Container(
                      height: 8.h,
                      width: 35.w,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 7),
                              blurRadius: 25,
                              color: Color(0xFFD5A0FF))
                        ],
                        color: Color(0xFF9610FF),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text("Love",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'interest');
                    },
                    child: Container(
                      height: 8.h,
                      width: 35.w,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 7),
                              blurRadius: 25,
                              color: Color(0xFFD5A0FF))
                        ],
                        color: Color(0xFF9610FF),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text("Family",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Align(alignment: Alignment.bottomCenter,
            child: Container(
              height: 15.h,
              width: 100.w,
              decoration: BoxDecoration(

                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,7),
                        blurRadius: 25,
                        color: Color(0xFFD5A0FF))
                  ],
                  color: Color(0xFF9610FF),
                  borderRadius: BorderRadius.only(topRight:Radius.circular(1500),topLeft:Radius.circular(1500),)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
