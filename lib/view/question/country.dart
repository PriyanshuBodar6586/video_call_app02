import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Country extends StatefulWidget {
  const Country({Key? key}) : super(key: key);

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  int cnte = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(elevation: 00,

        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Select Your Country",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                          cnte == 0 ? Color(0xff9610FF) : Colors.white,
                          elevation: 10,
                          side: BorderSide(color: Color(0xff9610FF),width: 2.sp),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        onPressed: () {
                          setState(() {
                            cnte = 0;
                          });
                        },
                        child: Text(
                          "🇮🇳 India",
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: cnte == 0 ? Colors.white : Color(0xff9610FF),
                          ),
                        )),
                  ),

                  Selecte("🇦🇺 Australia", 1),

                ],
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("🏴󠁧󠁢󠁥󠁮󠁧󠁿 England ", 2),
                  Selecte("🇪🇸 Spain", 3),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("🇮🇹 Italy", 4),
                  Selecte("🇵🇰 Pakistan", 5),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("🇷🇴 Romania", 6),
                  Selecte("🇹🇷 Turkey", 7),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("🇦🇪 UAE ", 12),
                  Selecte("🇺🇦 Ukraine", 13),
//󠁧󠁮󠁧󠁿
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("🇨🇭 Switzerland",14),
                  Selecte("🇷🇺 Russia", 15),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("🇶🇦 Qatar", 16),
                  Selecte("🇳🇵 Nepal", 17),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("🇯🇵 Japan", 24),
                  Selecte("🇸🇦 Saudi Arabia", 25),

                ],
              ),
              Row (
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("🇹🇭 Thailand",28 ),
                  Selecte("🇧🇩 Bangladesh", 29),
                ],
              ),
            ],
          ),

          // Container(
          // height: 15.h,
          // width: 100.w,
          // color: Colors.black,
          // ),
          Align(alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, 'Bottombar');
              },
              child: Container(
                height: 8.h,
                width: 90.w,
                decoration: BoxDecoration(

                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,7),
                        blurRadius: 25,
                        color: Color(0xFFD5A0FF))
                  ],
                  color: Color(0xFF9610FF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400)),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget Selecte(String text, int i) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ElevatedButton(

          style: ElevatedButton.styleFrom(
            elevation: 10,
            backgroundColor: cnte == i ? Color(0xff9610FF) : Colors.white,
            side: BorderSide(color: Color(0xff9610FF),width:2.sp ),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          onPressed: () {
            setState(() {
              cnte = i;
            });
          },
          child: Text(
            "$text",
            style: TextStyle(
              fontSize: 15.sp,
              color: cnte == i ? Colors.white : Color(0xff9610FF),
            ),
          )),
    );
  }
}

