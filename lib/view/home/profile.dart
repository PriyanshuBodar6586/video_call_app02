import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/model/model.dart';
import 'package:video_call_app02/provider/home_provider.dart';
import 'package:video_call_app02/utilies/adsconstant.dart';
import 'package:video_call_app02/utilies/constant.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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

    return Scaffold(
      backgroundColor: AppColor.fullwhite,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 00,
        centerTitle: true,
        title: Text("Profile",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.fullblack,
                fontSize: 20.sp)),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 15.h,
              width: 15.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(blurRadius: 50, color: Colors.deepPurpleAccent)
                ],
              ),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/profile.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Text(
              "Uid :-",
              style: TextStyle(
                fontSize: 15.sp,
                color: AppColor.fullblack,
              ),
            ),
            title: Text("23eg14fh5", style: TextStyle(color: AppColor.fullgr)),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: AppColor.fullblack,
              size: 30.sp,
            ),
            title: Text(home_providert!.mStrName),
            trailing: Icon(
              Icons.chevron_right_outlined,
              color: AppColor.fullblack,
              size: 25.sp,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.calendar_month,
              color: AppColor.fullblack,
              size: 30.sp,
            ),
            title: Text(
              "Age",
              style: TextStyle(color: AppColor.fullblack),
            ),
            trailing: Text(
              "18+",
              style: TextStyle(color: AppColor.fullblack),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.male,
              color: AppColor.fullblack,
              size: 30.sp,
            ),
            title: Text(
              "Gender",
              style: TextStyle(color: AppColor.fullblack),
            ),
            trailing: Text(
              "Male",
              style: TextStyle(color: AppColor.fullblack),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'intro1');
            },
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: AppColor.fullred,
                size: 30.sp,
              ),
              title: Text(
                "Log Out",
                style: TextStyle(color: AppColor.fullred),
              ),
              trailing: Icon(
                Icons.chevron_right_outlined,
                color: AppColor.fullblack,
                size: 25.sp,
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          isAdLoaded
              ? Container(
            height: 20.h,
            alignment: Alignment.center,
            child: AdWidget(ad: nativead!),
          )
              : Container(
            height: 20.h,
            alignment: Alignment.center,
            child: Center(child: const CircularProgressIndicator()),
          ),
        ],
      ),
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
