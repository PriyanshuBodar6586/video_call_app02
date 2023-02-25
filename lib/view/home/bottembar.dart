import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/utilies/constant.dart';
import 'package:video_call_app02/view/home/fcall.dart';
import 'package:video_call_app02/view/home/find_call.dart';
import 'package:video_call_app02/view/home/home_screen.dart';
import 'package:video_call_app02/view/home/like_screen.dart';
import 'package:video_call_app02/view/home/profile.dart';


void main() => runApp(MaterialApp(home: Bottombar()));

class Bottombar extends StatefulWidget {
  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {

  final items =  [
    Icon(Icons.swipe, size: 27.sp,color: AppColor.fullwhite,),
    Icon(Icons.video_call, size: 27.sp,color: AppColor.fullwhite,),
    Icon(Icons.location_on, size: 27.sp,color: AppColor.fullwhite,),
    Icon(Icons.call, size: 27.sp,color: AppColor.fullwhite,),
    Icon(Icons.person, size: 27.sp,color: AppColor.fullwhite,)
  ];

  int index = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: CurvedNavigationBar(

        items: items,
        index: index,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
        height: 60,
        color: AppColor.violet,
        buttonBackgroundColor: AppColor.violet,
        backgroundColor: AppColor.fullwhite,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
      ),
      body: Container(
          color: Colors.blue,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index)
      ),
    );
  }
}
Widget getSelectedWidget({required int index}){
  Widget widget;
  switch(index){
    case 0:
      widget = const Home_screen();
      break;
    case 1:
      widget = const Find_call();
      break;
    case 2:
      widget = const Like_screen();
      break;
    case 3:
      widget = const Fcall_screen();
      break;
    default:
      widget = const Profile();
      break;

  }
  return widget;
}

