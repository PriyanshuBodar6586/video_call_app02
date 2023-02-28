import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/model/ads_screen.dart';
import 'package:video_call_app02/model/model.dart';
import 'package:video_call_app02/provider/home_provider.dart';
import 'package:video_call_app02/utilies/adsconstant.dart';
import 'package:video_call_app02/utilies/constant.dart';
import 'package:video_call_app02/view/question/country.dart';

class Find_call extends StatefulWidget {
  const Find_call({Key? key}) : super(key: key);

  @override
  State<Find_call> createState() => _Find_callState();
}

class _Find_callState extends State<Find_call> {
  bool isloading = false;
  NativeAd? nativead;
  bool isAdLoaded = false;

  @override
  void initState() {
    super.initState();
    bannerAds();
    fornative();
  }

  Home_Provider? home_providert;
  Home_Provider? home_providerf;

  @override
  Widget build(BuildContext context) {
    home_providert = Provider.of<Home_Provider>(context, listen: true);
    home_providerf = Provider.of<Home_Provider>(context, listen: false);
    return WillPopScope(
      onWillPop: dialog,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 100.h,
              width: 100.w,
              child: Opacity(
                  opacity: 0.4,
                  child:
                      Image.asset("assets/images/map.png", fit: BoxFit.fill)),
            ),
            Column(
              children: [
                SizedBox(
                  height: 10.h,
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
              ],
            ),


            SizedBox(
              height: 10.h,
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Lottie.asset("assets/video/lottie/Comp 1.json")),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: InkWell(

                    onTap: () {
                      interVideoAds();
                      setState(() {
                        isloading = true;
                      });
                      Timer(Duration(seconds: 7), () {
                        setState(() {
                          isloading = false;
                        });
                        Navigator.pushNamed(context, "Lottie_Screen");
                      });
                  },
                  child: Container(
                    height: 8.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: AppColor.violet,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(blurRadius: 20, color: AppColor.fullwhite)
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
            ),
            isloading?Center(child: Lottie.asset("assets/video/lottie/Comp 1 (3).json"),):Container()
          ],
        ),
      ),
    );
  }

  Future<bool> dialog() async {
    return await false;
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
