import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';

import 'package:sizer/sizer.dart';
import 'package:video_call_app02/model/ads_screen.dart';
import 'package:video_call_app02/model/model.dart';
import 'package:video_call_app02/utilies/adsconstant.dart';



class Age extends StatefulWidget {
  const Age({Key? key}) : super(key: key);

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  bool isloading=false;
  NativeAd? nativead;
  bool isAdLoaded = false;
  @override
  void initState() {

    super.initState();
    bannerAds();
    fornative();
  }

  @override
  Widget build(BuildContext context) {
    txt m1 = ModalRoute.of(context)!.settings.arguments as txt;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [


            Stack(
              alignment: Alignment.topCenter,
              children: [
                SizedBox(
                  height: 60.h,
                ),

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
                SizedBox(
                  height: 30.h,
                ),

                isAdLoaded?
                Container(
                  height: 30.h,
                  alignment: Alignment.center,
                  child: AdWidget(ad: nativead!),
                ) :
                Container(
                  height: 30.h,
                  alignment: Alignment.center,
                  child: Center(child: const CircularProgressIndicator()),
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
                      height: 2.h,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,

                      child: Column(
                        children: [
                          InkWell(onTap: (){

                            interVideoAds();
                            setState(() {
                              isloading = true;
                            });
                            Timer(Duration(seconds: 7), () {
                              setState(() {
                                isloading = false ;
                              });
                              Navigator.pushNamed(context,'love',arguments: m1);
                            });




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

                            interVideoAds();
                            setState(() {
                              isloading = true;
                            });
                            Timer(Duration(seconds: 7), () {
                              setState(() {
                                isloading = false ;
                              });
                              Navigator.pushNamed(context,'love',arguments: m1);
                            });


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

                            interVideoAds();
                            setState(() {
                              isloading = true;
                            });
                            Timer(Duration(seconds: 7), () {
                              setState(() {
                                isloading = false ;
                              });
                              Navigator.pushNamed(context,'love',arguments: m1);
                            });


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

                            interVideoAds();
                            setState(() {
                              isloading = true;
                            });
                            Timer(Duration(seconds: 7), () {
                              setState(() {
                                isloading = false ;
                              });
                              Navigator.pushNamed(context,'love',arguments: m1);
                            });

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
                isloading?Center(child: Lottie.asset("assets/video/lottie/Comp 1 (3).json"),):Container(),
                Align(alignment: Alignment.bottomCenter,
                  child: SizedBox(height: 80,
                    child: AdWidget(ad: bannerAd!,),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  void fornative() {
    try
    {
      nativead = NativeAd(
        adUnitId: '$na',
        factoryId: 'listTile',
        request: const AdRequest(),
        listener: NativeAdListener(
            onAdLoaded: (_) {
              setState(() {
                isAdLoaded = true;
              });
            },
            onAdFailedToLoad: (ad, error) {
              fornative();

            }),
      );
      nativead!.load();
    }
    on Exception
    {}

  }
}
