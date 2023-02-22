import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:video_call_app02/utilies/constant.dart';
import 'package:video_call_app02/view/home/home_screen.dart';


void main() => runApp(MaterialApp(home: Bottombar()));

class Bottombar extends StatefulWidget {
  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.add, size: 30,color: AppColor.fullwhite,),
            Icon(Icons.list, size: 30,color: AppColor.fullwhite,),
            Icon(Icons.compare_arrows, size: 30,color: AppColor.fullwhite,),
            Icon(Icons.call_split, size: 30,color: AppColor.fullwhite,),
            Icon(Icons.perm_identity, size: 30,color: AppColor.fullwhite,),
          ],
          color: AppColor.violet,
          buttonBackgroundColor: AppColor.violet,
          backgroundColor: AppColor.fullwhite,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Home_screen());
  }
}