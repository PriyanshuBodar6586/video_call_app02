import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';


class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    islogin();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 60.h,
            width: 60.w,
            child: Center(
              child: Lottie.asset("assets/video/lottie/newScene.json"),
            ),
          ),
        ),
      ),
    );

  }
  void islogin(){
   Timer(Duration(seconds: 4),()=>Navigator.pushReplacementNamed(context,'intro1'));
  }
// void isLogin()async{
  //   SHRModel s1 = await getSHR();
  //   if(s1.login == true){
  //     Timer(Duration(seconds: 7),
  //             ()=>Navigator.pushReplacementNamed(context,'done')
  //     );}
  //   else{
  //     Timer(Duration(seconds: 7),
  //             ()=>Navigator.pushReplacementNamed(context, 'Privacy')
  //     );
  //   }
  // }
  // getAdid()async{
  //   Map<String, String> requestHeaders = {
  //     'Host': '<calculated when request is sent>',
  //     'User-Agent': 'PostmanRuntime/7.30.0',
  //     'Accept': '*/*',
  //     'Accept-Encoding': 'gzip, deflate, br',
  //     'Connection': 'keep-alive',
  //     'authorization': 'admin',
  //   };
  //   String newslike = "http://3.108.31.187:8080/get-appkey/6";
  //   var newsString = await http.get(Uri.parse(newslike),headers:requestHeaders);

    // print(newsString);
    // newsjson = adModelFromJson(newsString.body);

  //   print('-----data----->${newsjson?.data[0].keyId}');
  //   openAds();
  // }
}