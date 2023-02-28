import 'dart:math';

import 'package:flutter/material.dart';
import 'package:video_call_app02/model/model.dart';

class Home_Provider extends ChangeNotifier {
  final _random = new Random();
  bool isplay = false;

  int con = 0;
  late String mStrName;

  int i = 0;

  void changeicon(int index) {
    i = index;
    notifyListeners();
  }

  void image(int i) {
    con = i;
    notifyListeners();
  }

  void playpause() {
    isplay = !isplay;
    notifyListeners();
  }

  var date = DateTime.now();
  var t1 = TimeOfDay.now();

  void getdata(dynamic data_1) {
    date = data_1;
    notifyListeners();
  }

  void setdata(dynamic set_2) {
    t1 = set_2;
    notifyListeners();
  }

  List<Modeldata> cart = [];

  List<Modeldata> i1 = [
    Modeldata(
      video: "assets/video/vg/1.mp4",
      Image: "assets/images/ig/1.png",
      Name: "Name :-  Regina ",
    ),
    Modeldata(
      video: "assets/video/vg/2.mp4",
      Image: "assets/images/ig/2.png",
      Name: "Name :-  Raisa  ",
    ),
    Modeldata(
      video: "assets/video/vg/3.mp4",
      Image: "assets/images/ig/3.png",
      Name: "Name :-  Vanka ",
    ),
    Modeldata(
      video: "assets/video/vg/4.mp4",
      Image: "assets/images/ig/4.png",
      Name: "Name :-  Tavisha ",
    ),
    Modeldata(
      video: "assets/video/vg/5.mp4",
      Image: "assets/images/ig/5.png",
      Name: "Name :-  Svetlana ",
    ),
    Modeldata(
      video: "assets/video/vg/6.mp4",
      Image: "assets/images/ig/6.png",
      Name: "Name :-  rose",
    ),
    Modeldata(
      video: "assets/video/vg/7.mp4",
      Image: "assets/images/ig/7.png",
      Name: "Name :-  Roksana",
    ),
    Modeldata(
      video: "assets/video/vg/8.mp4",
      Image: "assets/images/ig/8.png",
      Name: "Name :-  Roza",
    ),
    Modeldata(
      video: "assets/video/vg/9.mp4",
      Image: "assets/images/ig/9.png",
      Name: "Name :-  Radinka ",
    ),
    Modeldata(
      video: "assets/video/vg/10.mp4",
      Image: "assets/images/ig/10.png",
      Name: "Name :- Divine",
    ),
    Modeldata(
      video: "assets/video/vg/11.mp4",
      Image: "assets/images/ig/11.png",
      Name: "Name :- kiran",
    ),
    Modeldata(
      video: "assets/video/vg/12.mp4",
      Image: "assets/images/ig/12.png",
      Name: "Name :- rutta",
    ),
    Modeldata(
      video: "assets/video/vg/13.mp4",
      Image: "assets/images/ig/13.png",
      Name: "Name :- Rada ",
    ),
    Modeldata(
      video: "assets/video/vg/14.mp4",
      Image: "assets/images/ig/14.png",
      Name: "Name :- Polina ",
    ),
    Modeldata(
      video: "assets/video/vg/15.mp4",
      Image: "assets/images/ig/15.png",
      Name: "Name :- Pheodora ",
    ),
    Modeldata(
      video: "assets/video/vg/16.mp4",
      Image: "assets/images/ig/16.png",
      Name: "Name :- Paraaha ",
    ),
    Modeldata(
      video: "assets/video/vg/17.mp4",
      Image: "assets/images/ig/17.png",
      Name: "Name :- Olya ",
    ),
    Modeldata(
      video: "assets/video/vg/18.mp4",
      Image: "assets/images/ig/18.png",
      Name: "Name :- Olien ",
    ),
    Modeldata(
      video: "assets/video/vg/19.mp4",
      Image: "assets/images/ig/19.png",
      Name: "Name :- Olechka ",
    ),
    Modeldata(
      video: "assets/video/vg/20.mp4",
      Image: "assets/images/ig/20.png",
      Name: "Name :- Ol'ga ",
    ),
    Modeldata(
      video: "assets/video/vg/21.mp4",
      Image: "assets/images/ig/21.png",
      Name: "Name :- Oksana ",
    ),
    Modeldata(
      video: "assets/video/vg/22.mp4",
      Image: "assets/images/ig/22.png",
      Name: "Name :- Ninotchka ",
    ),
    Modeldata(
      video: "assets/video/vg/23.mp4",
      Image: "assets/images/ig/23.png",
      Name: "Name :- Nadezhda ",
    ),
    Modeldata(
      video: "assets/video/vg/24.mp4",
      Image: "assets/images/ig/24.png",
      Name: "Name :- Mischa ",
    ),
    Modeldata(
      video: "assets/video/vg/25.mp4",
      Image: "assets/images/ig/25.png",
      Name: "Name :- Izabelle ",
    ),
    Modeldata(
      video: "assets/video/vg/26.mp4",
      Image: "assets/images/ig/26.png",
      Name: "Name :- Diana ",
    ),
    Modeldata(
      video: "assets/video/vg/27.mp4",
      Image: "assets/images/ig/27.png",
      Name: "Name :- Dasha ",
    ),
    Modeldata(
      video: "assets/video/vg/28.mp4",
      Image: "assets/images/ig/28.png",
      Name: "Name :- Dariya ",
    ),
    Modeldata(
      video: "assets/video/vg/29.mp4",
      Image: "assets/images/ig/29.png",
      Name: "Name :- Calina ",
    ),
    Modeldata(
      video: "assets/video/vg/30.mp4",
      Image: "assets/images/ig/30.png",
      Name: "Name :- Bella ",
    ),
    Modeldata(
      video: "assets/video/vg/31.mp4",
      Image: "assets/images/ig/31.png",
      Name: "Name :- Avdotya ",
    ),
    Modeldata(
      video: "assets/video/vg/32.mp4",
      Image: "assets/images/ig/32.png",
      Name: "Name :- Anzhelika ",
    ),
    Modeldata(
      video: "assets/video/vg/33.mp4",
      Image: "assets/images/ig/33.png",
      Name: "Name :- Anna ",
    ),
    Modeldata(
      video: "assets/video/vg/34.mp4",
      Image: "assets/images/ig/34.png",
      Name: "Name :- Nina ",
    ),
    Modeldata(
      video: "assets/video/vg/35.mp4",
      Image: "assets/images/ig/34.png",
      Name: "Name :- Natalya ",
    ),
    Modeldata(
      video: "assets/video/vg/36.mp4",
      Image: "assets/images/ig/36.png",
      Name: "Name :- Nadia",
    ),
    Modeldata(
      video: "assets/video/vg/37.mp4",
      Image: "assets/images/ig/37.png",
      Name: "Name :- Mila",
    ),
    Modeldata(
      video: "assets/video/vg/38.mp4",
      Image: "assets/images/ig/38.png",
      Name: "Name :- Lia",
    ),
    Modeldata(
      video: "assets/video/vg/39.mp4",
      Image: "assets/images/ig/39.png",
      Name: "Name :- Lelyah ",
    ),
    Modeldata(
      video: "assets/video/vg/40.mp4",
      Image: "assets/images/ig/40.png",
      Name: "Name :- Lara",
    ),
    Modeldata(
      video: "assets/video/vg/41.mp4",
      Image: "assets/images/ig/41.png",
      Name: "Name :- Lada",
    ),
    Modeldata(
      video: "assets/video/vg/42.mp4",
      Image: "assets/images/ig/42.png",
      Name: "Name :- Kira",
    ),
    Modeldata(
      video: "assets/video/vg/43.mp4",
      Image: "assets/images/ig/43.png",
      Name: "Name :- Khristina ",
    ),
    Modeldata(
      video: "assets/video/vg/44.mp4",
      Image: "assets/images/ig/44.png",
      Name: "Name :- Katina ",
    ),
    Modeldata(
      video: "assets/video/vg/45.mp4",
      Image: "assets/images/ig/45.png",
      Name: "Name :- Karine ",
    ),
    Modeldata(
      video: "assets/video/vg/46.mp4",
      Image: "assets/images/ig/46.png",
      Name: "Name :- Irina ",
    ),
    Modeldata(
      video: "assets/video/vg/47.mp4",
      Image: "assets/images/ig/47.png",
      Name: "Name :- Anya ",
    ),
    Modeldata(
      video: "assets/video/vg/48.mp4",
      Image: "assets/images/ig/48.png",
      Name: "Name :- Annika ",
    ),
    Modeldata(
      video: "assets/video/vg/49.mp4",
      Image: "assets/images/ig/49.png",
      Name: "Name :- Angelina ",
    ),
    Modeldata(
      video: "assets/video/vg/50.mp4",
      Image: "assets/images/ig/50.png",
      Name: "Name :- Anastasia",
    )
  ];

  List data2 = [];
  Modeldata? Datapickkk;

  List<Modeldata> i2 = [
    Modeldata(
      video: "assets/video/vg/1.mp4",
      Image: "assets/images/ig/1.png",
      Name: "Name :-  Regina ",
    ),
    Modeldata(
      video: "assets/video/vg/2.mp4",
      Image: "assets/images/ig/2.png",
      Name: "Name :-  Raisa  ",
    ),
    Modeldata(
      video: "assets/video/vg/3.mp4",
      Image: "assets/images/ig/3.png",
      Name: "Name :-  Vanka ",
    ),
    Modeldata(
      video: "assets/video/vg/4.mp4",
      Image: "assets/images/ig/4.png",
      Name: "Name :-  Tavisha ",
    ),
    Modeldata(
      video: "assets/video/vg/5.mp4",
      Image: "assets/images/ig/5.png",
      Name: "Name :-  Svetlana ",
    ),
    Modeldata(
      video: "assets/video/vg/6.mp4",
      Image: "assets/images/ig/6.png",
      Name: "Name :-  rose",
    ),
    Modeldata(
      video: "assets/video/vg/7.mp4",
      Image: "assets/images/ig/7.png",
      Name: "Name :-  Roksana",
    ),
    Modeldata(
      video: "assets/video/vg/8.mp4",
      Image: "assets/images/ig/8.png",
      Name: "Name :-  Roza",
    ),
    Modeldata(
      video: "assets/video/vg/9.mp4",
      Image: "assets/images/ig/9.png",
      Name: "Name :-  Radinka ",
    ),
    Modeldata(
      video: "assets/video/vg/10.mp4",
      Image: "assets/images/ig/10.png",
      Name: "Name :- Divine",
    ),
    Modeldata(
      video: "assets/video/vg/11.mp4",
      Image: "assets/images/ig/11.png",
      Name: "Name :- kiran",
    ),
    Modeldata(
      video: "assets/video/vg/12.mp4",
      Image: "assets/images/ig/12.png",
      Name: "Name :- rutta",
    ),
    Modeldata(
      video: "assets/video/vg/13.mp4",
      Image: "assets/images/ig/13.png",
      Name: "Name :- Rada ",
    ),
    Modeldata(
      video: "assets/video/vg/14.mp4",
      Image: "assets/images/ig/14.png",
      Name: "Name :- Polina ",
    ),
    Modeldata(
      video: "assets/video/vg/15.mp4",
      Image: "assets/images/ig/15.png",
      Name: "Name :- Pheodora ",
    ),
    Modeldata(
      video: "assets/video/vg/16.mp4",
      Image: "assets/images/ig/16.png",
      Name: "Name :- Paraaha ",
    ),
    Modeldata(
      video: "assets/video/vg/17.mp4",
      Image: "assets/images/ig/17.png",
      Name: "Name :- Olya ",
    ),
    Modeldata(
      video: "assets/video/vg/18.mp4",
      Image: "assets/images/ig/18.png",
      Name: "Name :- Olien ",
    ),
    Modeldata(
      video: "assets/video/vg/19.mp4",
      Image: "assets/images/ig/19.png",
      Name: "Name :- Olechka ",
    ),
    Modeldata(
      video: "assets/video/vg/20.mp4",
      Image: "assets/images/ig/20.png",
      Name: "Name :- Ol'ga ",
    ),
    Modeldata(
      video: "assets/video/vg/21.mp4",
      Image: "assets/images/ig/21.png",
      Name: "Name :- Oksana ",
    ),
    Modeldata(
      video: "assets/video/vg/22.mp4",
      Image: "assets/images/ig/22.png",
      Name: "Name :- Ninotchka ",
    ),
    Modeldata(
      video: "assets/video/vg/23.mp4",
      Image: "assets/images/ig/23.png",
      Name: "Name :- Nadezhda ",
    ),
    Modeldata(
      video: "assets/video/vg/24.mp4",
      Image: "assets/images/ig/24.png",
      Name: "Name :- Mischa ",
    ),
    Modeldata(
      video: "assets/video/vg/25.mp4",
      Image: "assets/images/ig/25.png",
      Name: "Name :- Izabelle ",
    ),
    Modeldata(
      video: "assets/video/vg/26.mp4",
      Image: "assets/images/ig/26.png",
      Name: "Name :- Diana ",
    ),
    Modeldata(
      video: "assets/video/vg/27.mp4",
      Image: "assets/images/ig/27.png",
      Name: "Name :- Dasha ",
    ),
    Modeldata(
      video: "assets/video/vg/28.mp4",
      Image: "assets/images/ig/28.png",
      Name: "Name :- Dariya ",
    ),
    Modeldata(
      video: "assets/video/vg/29.mp4",
      Image: "assets/images/ig/29.png",
      Name: "Name :- Calina ",
    ),
    Modeldata(
      video: "assets/video/vg/30.mp4",
      Image: "assets/images/ig/30.png",
      Name: "Name :- Bella ",
    ),
    Modeldata(
      video: "assets/video/vg/31.mp4",
      Image: "assets/images/ig/31.png",
      Name: "Name :- Avdotya ",
    ),
    Modeldata(
      video: "assets/video/vg/32.mp4",
      Image: "assets/images/ig/32.png",
      Name: "Name :- Anzhelika ",
    ),
    Modeldata(
      video: "assets/video/vg/33.mp4",
      Image: "assets/images/ig/33.png",
      Name: "Name :- Anna ",
    ),
    Modeldata(
      video: "assets/video/vg/34.mp4",
      Image: "assets/images/ig/34.png",
      Name: "Name :- Nina ",
    ),
    Modeldata(
      video: "assets/video/vg/35.mp4",
      Image: "assets/images/ig/34.png",
      Name: "Name :- Natalya ",
    ),
    Modeldata(
      video: "assets/video/vg/36.mp4",
      Image: "assets/images/ig/36.png",
      Name: "Name :- Nadia",
    ),
    Modeldata(
      video: "assets/video/vg/37.mp4",
      Image: "assets/images/ig/37.png",
      Name: "Name :- Mila",
    ),
    Modeldata(
      video: "assets/video/vg/38.mp4",
      Image: "assets/images/ig/38.png",
      Name: "Name :- Lia",
    ),
    Modeldata(
      video: "assets/video/vg/39.mp4",
      Image: "assets/images/ig/39.png",
      Name: "Name :- Lelyah ",
    ),
    Modeldata(
      video: "assets/video/vg/40.mp4",
      Image: "assets/images/ig/40.png",
      Name: "Name :- Lara",
    ),
    Modeldata(
      video: "assets/video/vg/41.mp4",
      Image: "assets/images/ig/41.png",
      Name: "Name :- Lada",
    ),
    Modeldata(
      video: "assets/video/vg/42.mp4",
      Image: "assets/images/ig/42.png",
      Name: "Name :- Kira",
    ),
    Modeldata(
      video: "assets/video/vg/43.mp4",
      Image: "assets/images/ig/43.png",
      Name: "Name :- Khristina ",
    ),
    Modeldata(
      video: "assets/video/vg/44.mp4",
      Image: "assets/images/ig/44.png",
      Name: "Name :- Katina ",
    ),
    Modeldata(
      video: "assets/video/vg/45.mp4",
      Image: "assets/images/ig/45.png",
      Name: "Name :- Karine ",
    ),
    Modeldata(
      video: "assets/video/vg/46.mp4",
      Image: "assets/images/ig/46.png",
      Name: "Name :- Irina ",
    ),
    Modeldata(
      video: "assets/video/vg/47.mp4",
      Image: "assets/images/ig/47.png",
      Name: "Name :- Anya ",
    ),
    Modeldata(
      video: "assets/video/vg/48.mp4",
      Image: "assets/images/ig/48.png",
      Name: "Name :- Annika ",
    ),
    Modeldata(
      video: "assets/video/vg/49.mp4",
      Image: "assets/images/ig/49.png",
      Name: "Name :- Angelina ",
    ),
    Modeldata(
      video: "assets/video/vg/50.mp4",
      Image: "assets/images/ig/50.png",
      Name: "Name :- Anastasia",
    )
  ];

  List data3 = [];
  Modeldata? Datapikkk;
}
