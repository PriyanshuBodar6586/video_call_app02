import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/model/ads_screen.dart';
import 'package:video_call_app02/model/model.dart';
import 'package:video_call_app02/utilies/adsconstant.dart';

import '../../../provider/home_provider.dart';

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  Home_Provider? home_providerT;
  Home_Provider? home_providerF;
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
    home_providerF = Provider.of<Home_Provider>(context, listen: false);
    home_providerT = Provider.of<Home_Provider>(context, listen: true);
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 20.h,
              width: 45.w,
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

               Column(
                 children: [
                   SizedBox(
                     height: 10.h,
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
                   Text(
                     "What Is Your Gender ?",
                     style: TextStyle(
                         color: Color(0xFF9610FF),
                         fontWeight: FontWeight.bold,
                         fontSize: 22.sp),
                   ),
                   SizedBox(
                     height: 1.h,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       InkWell(
                         onTap: () {
                           interVideoAds();
                           setState(() {
                             isloading = true;
                           });
                           Timer(Duration(seconds: 7), () {
                             setState(() {
                               isloading = false ;
                             });
                             Navigator.pushNamed(context, 'Age',arguments: m1);
                           });

                         },
                         child: Container(
                           height: 27.h,
                           width: 45.w,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               border: Border.all(width: 2, color: Color(0xFFD5A0FF))),
                           child: Image.asset("assets/images/boy.png", fit: BoxFit.fill),
                         ),
                       ),

                       InkWell(
                         onTap: () {
                           interVideoAds();
                           setState(() {
                             isloading = true;
                           });
                           Timer(Duration(seconds: 7), () {
                             setState(() {
                               isloading = false ;
                             });
                             Navigator.pushNamed(context, 'Age',arguments: m1);
                           });
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
                           child: Image.asset("assets/images/girl.png"),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(
                     height: 1.h,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       InkWell(
                         onTap: () {
                           interVideoAds();
                           setState(() {
                             isloading = true;
                           });
                           Timer(Duration(seconds: 7), () {
                             setState(() {
                               isloading = false ;
                             });
                             Navigator.pushNamed(context, 'Age',arguments: m1);
                           });
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
                             child: Text("male",
                                 style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 20.sp,
                                     fontWeight: FontWeight.bold)),
                           ),
                         ),
                       ),
                       InkWell(
                         onTap: () {
                           interVideoAds();
                           setState(() {
                             isloading = true;
                           });
                           Timer(Duration(seconds: 7), () {
                             setState(() {
                               isloading = false ;
                             });
                             Navigator.pushNamed(context, 'Age',arguments: m1);
                           });
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
                             child: Text("Female",
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

            ],
          ),
          Align(alignment: Alignment.bottomLeft,
            child: Container(
              height: 17.h,
              width: 45.w,
              decoration: BoxDecoration(

                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,7),
                        blurRadius: 25,
                        color: Color(0xFFD5A0FF))
                  ],
                  color: Color(0xFF9610FF),
                  borderRadius: BorderRadius.only(topRight:Radius.circular(1000),)
              ),
            ),
          ),
          isloading?Center(child: Lottie.asset("assets/video/lottie/Comp 1 (3).json"),):Container(),
          Align(alignment: Alignment.bottomCenter,
            child: SizedBox(height: 80,
              child: AdWidget(ad: bannerAd!,),),
          ),
        ],
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
