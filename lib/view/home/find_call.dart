import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/utilies/constant.dart';

class Find_call extends StatefulWidget {
  const Find_call({Key? key}) : super(key: key);

  @override
  State<Find_call> createState() => _Find_callState();
}

class _Find_callState extends State<Find_call> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body:Stack(
        children: [
          Container(
            height: 100.h,
            width: 100.w,
            child: Opacity(opacity: 0.4,child: Image.asset("assets/images/map.png",fit: BoxFit.fill)),

            ),
          Center(child: Lottie.asset("assets/video/lottie/Comp 1.json")),
          Align(alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height:8.h,
                width:100.w,
                decoration: BoxDecoration(
                  color:AppColor.violet,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20, color:AppColor.fullwhite)
                  ],
                ),
                child: Center(
                  child: Text("Tap To Call",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.fullwhite,
                        fontSize: 20.sp,
                      )),
                ),
              ),
            ),

          ),

        ],
      ),
      );
  }
}
