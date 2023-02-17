import 'dart:math';

import 'package:flutter/material.dart';

import '../model/model.dart';



class Home_Provider extends ChangeNotifier{
  final _random = new Random();
  bool isplay = false ;
  int con =0;

  int i=0;

  void changeicon(int index){
    i = index;
    notifyListeners();
  }

  void image(int i)
  {
    con = i;
    notifyListeners();
  }

  void playpause()
  {
    isplay=!isplay;
    notifyListeners();
  }

  var date =DateTime.now();
  var t1 = TimeOfDay.now();

  void getdata(dynamic data_1) {
    date = data_1;
    notifyListeners();
  }

  void setdata(dynamic set_2){
    t1 = set_2;
    notifyListeners();
  }

  List<Modeldata>cart = [];







  List<Modeldata>i1 = [
    Modeldata(video:"assets/video/vg/v0.mp4",Image: "assets/image/ig/i0.jpg",Name:" neha",),



  ];

  List data2 = [];
  Modeldata?Datapickkk;



}

