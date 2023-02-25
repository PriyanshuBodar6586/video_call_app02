
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/view/home/bottembar.dart';
import 'package:video_call_app02/view/home/fcall.dart';
import 'package:video_call_app02/view/home/fcall_play.dart';
import 'package:video_call_app02/view/home/like_post.dart';
import 'package:video_call_app02/view/home/lottie.dart';
import 'package:video_call_app02/view/intro_screen.dart';
import 'package:video_call_app02/view/intro_screen2.dart';
import 'package:video_call_app02/view/intro_screnn3.dart';
import 'package:video_call_app02/view/question/age.dart';
import 'package:video_call_app02/view/question/country.dart';
import 'package:video_call_app02/view/question/gender.dart';
import 'package:video_call_app02/view/question/interest.dart';
import 'package:video_call_app02/view/question/nick_name.dart';
import 'package:video_call_app02/view/splash_screen.dart';

import 'provider/home_provider.dart';
import 'view/question/love_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // MobileAds.instance.initialize();//Add this
  // await FaceCamera.initialize();
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider(create: (contest) => Home_Provider()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: 'Country',



            routes: {
              '/': (contest) => splash_screen(),
              'intro1': (contest) => intro1(),
              'Intro2': (contest) => Intro2(),
              'intro3': (contest) => Intro3(),
              'Nickname_Screen': (contest) => Nickname_Screen(),
              'Gender': (contest) => Gender(),
              'Age': (contest) => Age(),
              'love': (contest) => love(),
              'interest': (contest) => interest(),
              'Country': (contest) => Country(),
              'Bottombar': (contest) => Bottombar(),
              'Lottie_Screen': (contest) => Lottie_Screen(),
              'Fcall_screen': (contest) => Fcall_screen(),
              'Fcall_play': (contest) => Fcall_play(),
              'near_post': (contest) => near_post(),

            },
          );
        },
      ),
    ),
  );
}