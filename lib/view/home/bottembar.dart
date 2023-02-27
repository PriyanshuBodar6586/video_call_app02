import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/provider/home_provider.dart';
import 'package:video_call_app02/utilies/constant.dart';
import 'package:video_call_app02/view/home/fcall.dart';
import 'package:video_call_app02/view/home/find_call.dart';
import 'package:video_call_app02/view/home/home_screen.dart';
import 'package:video_call_app02/view/home/like_screen.dart';
import 'package:video_call_app02/view/home/profile.dart';

class Bottombar extends StatefulWidget {
  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {

  List WidgetsList=[Home_screen(),Find_call(),Like_screen(),Fcall_screen(),Profile(),];
  Home_Provider ? home_providert;
  Home_Provider ? home_providerf;
  @override
  Widget build(BuildContext context) {
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.swipe, size: 27.sp,color: AppColor.fullwhite,),
          Icon(Icons.video_call, size: 27.sp,color: AppColor.fullwhite,),
          Icon(Icons.location_on, size: 27.sp,color: AppColor.fullwhite,),
          Icon(Icons.call, size: 27.sp,color: AppColor.fullwhite,),
          Icon(Icons.person, size: 27.sp,color: AppColor.fullwhite,),
        ],
        index: Provider.of<Home_Provider>(context,listen:true).i ,
        onTap: (value){
          Provider.of<Home_Provider>(context,listen:false).changeicon(value);
        },
        height: 60,
        color: AppColor.violet,
        buttonBackgroundColor: AppColor.violet,
        backgroundColor: AppColor.fullwhite,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
      ),
      body: WidgetsList[Provider.of<Home_Provider>(context,listen: true).i],
    );
  }
}

