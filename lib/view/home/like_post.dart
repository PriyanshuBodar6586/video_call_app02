import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/model/ads_screen.dart';
import 'package:video_call_app02/utilies/adsconstant.dart';

import '../../provider/home_provider.dart';


class near_post extends StatefulWidget {
  const near_post({Key? key}) : super(key: key);

  @override
  State<near_post> createState() => _near_postState();
}

class _near_postState extends State<near_post> {
  Home_Provider? home_providerf;
  Home_Provider? home_providert;
  bool isloading = false;
  NativeAd? nativead;
  bool isAdLoaded = false;

  @override
  void initState() {
    super.initState();
    fornative();
  }

  @override
  Widget build(BuildContext context) {

    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    height: 50.h,
                    width: 100.w,
                    child: Image.asset("${home_providerf!.Datapickkk!.Image}",height: 50.h,width: 100.w,fit: BoxFit.fill,),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 3.w),
                          child: InkWell(onTap: (){
                            Navigator.pushNamed(context,'Bottombar');
                          },child: IconButton(onPressed: (){},icon:Icon(Icons.arrow_back_ios,color: Colors.white,size: 20.sp,))),
                        ),

                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Text(" ${home_providerf!.Datapickkk!.Name}❤",style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w700),),
                    ),
                  ),
                  SizedBox(height: 1.h,),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.female,color: Color(0xFFFF4D67),size: 20.sp,),
                          Text("Gender : Female",style: TextStyle(color: Color(0xFFFF4D67),fontSize: 12.sp,),),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 3.h,),
              isAdLoaded?
              Container(
                height: 20.h,
                alignment: Alignment.center,
                child: AdWidget(ad: nativead!),
              ) :
              Container(
                height: 20.h,
                alignment: Alignment.center,
                child: Center(child: const CircularProgressIndicator()),
              ),


              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [InkWell(
                  onTap: (){
                    interVideoAds();
                    setState(() {
                      isloading = true;
                    });
                    Timer(Duration(seconds: 7), () {
                      setState(() {
                        isloading = false ;
                      });
                      Navigator.pushNamed(context,'Lottie_Screen' );
                    });


                  },
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
                    child: Center(child: Text("Enter Privet Call",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),],
              ),



            ],
          ),
          isloading?Center(child: Lottie.asset("assets/video/lottie/Comp 1 (3).json"),):Container(),
        ],
      ),
    );
  }
  void fornative() {
    try {
      nativead = NativeAd(
        adUnitId: '$na',
        factoryId: 'listTile',
        request: const AdRequest(),
        listener: NativeAdListener(onAdLoaded: (_) {
          setState(() {
            isAdLoaded = true;
          });
        }, onAdFailedToLoad: (ad, error) {
          fornative();
        }),
      );
      nativead!.load();
    } on Exception {}
  }
}