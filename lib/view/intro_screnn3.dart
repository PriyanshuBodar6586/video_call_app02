import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/model/ads_screen.dart';


class Intro3 extends StatefulWidget {
  const Intro3({Key? key}) : super(key: key);

  @override
  State<Intro3> createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
  bool isloading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset("assets/images/3.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
                Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(onTap: (){
                        interVideoAds();
                         setState(() {
                           isloading = true;
                         });
                         Timer(Duration(seconds: 7), () {
                           setState(() {
                            isloading = false ;
                           });
                           Navigator.pushNamed(context,'Nickname_Screen');
                         });


                      },
                        child: Center(
                          child: Container(
                            height: 8.h,
                            width: 90.w,
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
                            child: Center(child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),

              ],
            ),
          ),
          isloading?Center(child: Lottie.asset("assets/video/lottie/92477-wagmi-loading.json"),):Container(),
        ],
      ),
    );
  }
}
