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

class Done extends StatefulWidget {
  const Done({Key? key}) : super(key: key);

  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
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
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
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
              Container(
                height: 2.h,
              ),
              isAdLoaded
                  ? Container(
                height: 30.h,
                alignment: Alignment.center,
                child: AdWidget(ad: nativead!),
              )
                  : Container(
                height: 30.h,
                alignment: Alignment.center,
                child: Center(child: const CircularProgressIndicator()),
              ),

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
                    Navigator.pushNamed(context, 'Bottombar',arguments: m1);
                  });


                },
                child: Align(alignment: Alignment.center,
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
                      child: Center(child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),

                      ),
                    ),
                  ),
              ),
              Stack(
                children: [
                  Container(
                    height: 20.h,
                    width: 100.w,
                    child:   Lottie.asset("assets/video/lottie/92501-love.json"),
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
