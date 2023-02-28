import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/model/model.dart';
import 'package:video_call_app02/utilies/adsconstant.dart';
import 'package:video_call_app02/utilies/constant.dart';


import '../../provider/home_provider.dart';

class Like_screen extends StatefulWidget {
  const Like_screen({Key? key}) : super(key: key);

  @override
  State<Like_screen> createState() => _Like_screenState();
}

class _Like_screenState extends State<Like_screen> {
  bool isloading = false;
  NativeAd? nativead;
  bool isAdLoaded = false;

  @override
  void initState() {
    super.initState();
    fornative();
  }
  Home_Provider? home_providerf;
  Home_Provider? home_providert;
  @override
  Widget build(BuildContext context) {
    home_providerf = Provider.of<Home_Provider>(context, listen: false);
    home_providert = Provider.of<Home_Provider>(context, listen: true);
    return WillPopScope(
      onWillPop: dialog,
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Near By",style: TextStyle(fontWeight: FontWeight.bold,color: AppColor.violet,fontSize: 20.sp),),
              backgroundColor: AppColor.fullwhite,
            ),
            body: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 6.h,
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

                Align(alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 55.h,
                    width: 100.w,
                    child: ListView.builder(
                      itemCount:home_providerf!.i1.length ,
                      itemBuilder: (contest,index){
                        return Container(
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1))
                          ),
                          child: InkWell(
                            onTap: (){
                              home_providerf!.Datapickkk = Modeldata(
                                Image: home_providerf!.i1[index].Image,
                                Name: home_providerf!.i1[index].Name,

                              );

                              Navigator.pushNamed(context, 'near_post');
                            },
                            child: ListTile (
                              leading:CircleAvatar(child: ClipRRect(borderRadius: BorderRadius.circular(80) ,child: Image.asset("${home_providerf!.i1[index].Image}",fit: BoxFit.fill,height: 150,width: 150,))),
                              title:Text("${home_providerf!.i1[index].Name}"),
                              trailing:Icon(Icons.arrow_forward_ios_sharp),
                            ),
                          ),
                        );
                      },

                    ),
                  ),
                ),
              ],
            ),
          ),
          isloading?Center(child: Lottie.asset("assets/video/136926-loading-123.json"),):Container()
        ],
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
