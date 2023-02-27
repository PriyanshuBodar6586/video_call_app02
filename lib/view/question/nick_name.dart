import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/model/ads_screen.dart';
import 'package:video_call_app02/model/model.dart';
import 'package:video_call_app02/utilies/adsconstant.dart';


class Nickname_Screen extends StatefulWidget {
  const Nickname_Screen({Key? key}) : super(key: key);

  @override
  State<Nickname_Screen> createState() => _Nickname_ScreenState();
}

class _Nickname_ScreenState extends State<Nickname_Screen> {

  TextEditingController txtnickname = TextEditingController();
  var txtkey = GlobalKey<FormState>();
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

    return Form(
      key: txtkey,
      child: Scaffold(resizeToAvoidBottomInset: false,

        body: Stack(
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
            Column(
              children: [
                    SizedBox(
                    height: 8.h,
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
                SizedBox(
                  height: 2.h,
                ),
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
                SizedBox(height: 2.h),
                InkWell(
                   onTap: (){
                     interVideoAds();
                     setState(() {
                       isloading = true;
                     });
                     Timer(Duration(seconds: 7), () {
                       setState(() {
                         isloading = false ;
                       });
                       if(txtkey.currentState!.validate() == true ){
                         txt m1 = txt(
                           name: txtnickname.text,
                         );
                         Navigator.pushNamed(context,'Gender',arguments: m1);
                       }
                     });

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

                //SizedBox(height: 20.h,)
              ],
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
            isloading?Center(child: Lottie.asset("assets/video/lottie/92477-wagmi-loading.json"),):Container(),
            Align(alignment: Alignment.bottomCenter,
              child: SizedBox(height: 80,
                child: AdWidget(ad: bannerAd!,),),
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