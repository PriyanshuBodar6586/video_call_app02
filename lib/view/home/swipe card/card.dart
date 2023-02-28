import 'dart:async';

import 'package:flutter/cupertino.dart';
//Home_screenCard
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/model/ads_screen.dart';
import 'package:video_call_app02/view/home/swipe%20card/candidate_model.dart';


class Home_screenCard extends StatefulWidget {
  final Home_screenCandidateModel candidate;

  const Home_screenCard({
    Key? key,
    required this.candidate,
  }) : super(key: key);

  @override
  State<Home_screenCard> createState() => _Home_screenCardState();
}

class _Home_screenCardState extends State<Home_screenCard> {
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
      setState(() {
        isloading = true;
      });
      interVideoAds();
      Timer(Duration(seconds: 7), () {
        setState(() {
          isloading = false ;
        });
      Navigator.pushNamed(context, 'Lottie_Screen');
      });
    },
      child: Container(
        height: 70.h,
        width: 95.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: CupertinoColors.white,
          boxShadow: [
            BoxShadow(
              color: CupertinoColors.systemGrey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 4),
            )
          ],
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: 95.w,
                    height: 50.h,
                    child:Image.asset("${widget.candidate.image}",width: 95.w,height: 50.h,fit: BoxFit.fill,),
                  ),
                ),
                isloading?Center(child: Lottie.asset("assets/video/lottie/Comp 1 (3).json"),):Container(),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.candidate.name!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.candidate.job!,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.candidate.city!,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}