import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/model/ads_screen.dart';
import 'package:video_call_app02/model/model.dart';
import 'package:video_call_app02/utilies/adsconstant.dart';

class Country extends StatefulWidget {
  const Country({Key? key}) : super(key: key);

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  int cnte = 0;
  bool isloading = false;
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
      appBar: AppBar(
        elevation: 00,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Select Your Country",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  cnte == 0 ? Color(0xff9610FF) : Colors.white,
                              elevation: 10,
                              side: BorderSide(
                                  color: Color(0xff9610FF), width: 2.sp),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            onPressed: () {
                              setState(() {
                                cnte = 0;
                              });
                            },
                            child: Text(
                              "🇮🇳 India",
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: cnte == 0
                                    ? Colors.white
                                    : Color(0xff9610FF),
                              ),
                            )),
                      ),
                      Selecte("🇦🇺 Australia", 1),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Selecte("🏴󠁧󠁢󠁥󠁮󠁧󠁿 England ", 2),
                      Selecte("🇪🇸 Spain", 3),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Selecte("🇮🇹 Italy", 4),
                      Selecte("🇵🇰 Pakistan", 5),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Selecte("🇷🇴 Romania", 6),
                      Selecte("🇹🇷 Turkey", 7),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Selecte("🇦🇪 UAE ", 12),
                      Selecte("🇺🇦 Ukraine", 13),
//󠁧󠁮󠁧󠁿
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Selecte("🇨🇭 Switzerland", 14),
                      Selecte("🇷🇺 Russia", 15),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Selecte("🇶🇦 Qatar", 16),
                      Selecte("🇳🇵 Nepal", 17),
                    ],
                  ),

                ],
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
              Align(
                alignment: Alignment.bottomCenter,
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
                      Navigator.pushNamed(context, 'Done', arguments: m1);
                    });
                  },
                  child: Container(
                    height: 7.h,
                    width: 90.w,
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
                      child: Text("Next",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          isloading
              ? Center(
                  child: Lottie.asset("assets/video/lottie/Comp 1 (3).json"),
                )
              : Container(),
        ],
      ),
    );
  }

  Widget Selecte(String text, int i) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 10,
            backgroundColor: cnte == i ? Color(0xff9610FF) : Colors.white,
            side: BorderSide(color: Color(0xff9610FF), width: 2.sp),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          onPressed: () {
            setState(() {
              cnte = i;
            });
          },
          child: Text(
            "$text",
            style: TextStyle(
              fontSize: 15.sp,
              color: cnte == i ? Colors.white : Color(0xff9610FF),
            ),
          )),
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
