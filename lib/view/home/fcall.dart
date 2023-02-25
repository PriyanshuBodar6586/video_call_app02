import 'dart:async';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/model/model.dart';
import 'package:video_call_app02/utilies/constant.dart';


import '../../provider/home_provider.dart';

class Fcall_screen extends StatefulWidget {
  const Fcall_screen({Key? key}) : super(key: key);

  @override
  State<Fcall_screen> createState() => _Fcall_screenState();
}

class _Fcall_screenState extends State<Fcall_screen> {
  Home_Provider? home_providerf;
  Home_Provider? home_providert;
  bool isloading=false;


  @override
  Widget build(BuildContext context) {
    home_providerf = Provider.of<Home_Provider>(context, listen: false);
    home_providert = Provider.of<Home_Provider>(context, listen: true);
    return WillPopScope( onWillPop: ()async{
      return false;
    },
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: Text(
                "Popular",
                style: TextStyle(
                    color: AppColor.violet, fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            body: Align(alignment: Alignment.bottomCenter,
              child: Container(
                height: 55.h,
                width: 100.w,
                child: GridView.builder(
                  itemCount: home_providerf!.i1.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 32.h),
                  itemBuilder: (contest, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: InkWell(
                        onTap: () {


                          home_providerf!.Datapickkk = Modeldata(
                            Name: home_providerf!.i1[index].Name,
                            Image: home_providerf!.i1[index].Image,
                            video: home_providerf!.i1[index].video,
                          );
                          Navigator.pushNamed(context, 'Fcall_play');



                        },
                        child: Column(
                          children: [
                            Container(
                              height: 30.h,
                              width: 48.w,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "${home_providerf!.i1[index].Image}",
                                      fit: BoxFit.fill,
                                      height: 35.h,
                                      width: 48.w,
                                    ),
                                  ),
                                  Container(
                                    height: 100.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),gradient: LinearGradient(
                                      begin:Alignment.topCenter ,

                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        Colors.transparent,
                                        AppColor.lviolet,

                                      ]
                                    )),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(5.sp),

                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                               Row(
                                                 mainAxisAlignment:
                                                 MainAxisAlignment.start,
                                                 children: [
                                                   Padding(
                                                     padding: EdgeInsets.symmetric(
                                                         horizontal: 5.0.sp),
                                                     child: Text(
                                                       "${home_providerf!.i1[index].Name}",
                                                       style: TextStyle(
                                                           color: Colors.white,
                                                           fontSize: 18),
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                              Padding(
                                                padding: EdgeInsets.all(2.0.sp),
                                                child: Row(

                                                  children: [

                                                    Text(
                                                      "Hot",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
