import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class interest extends StatefulWidget {
  const interest({Key? key}) : super(key: key);

  @override
  State<interest> createState() => _interestState();
}

class _interestState extends State<interest> {
  int cnte = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(elevation: 00,

        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Select Your Interest",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),),
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
                          "🎮 Gaming",
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: cnte == 0 ? Colors.white : Color(0xff9610FF),
                          ),
                        )),
                  ),

                  Selecte("🏍 Teavel & Bike Ride", 1),

                ],
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("🌍 Language ", 2),
                  Selecte("🎬 Movie", 3),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("📚 Book & Novel", 4),
                  Selecte("🏛️ Architecture", 5),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("📸 Photography", 6),
                  Selecte("👗 Fashion", 7),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("✍ Writing ", 12),
                  Selecte("🌿Nature & Plant ", 13),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("🎨 Painting",14),
                  Selecte("⚽ Football", 15),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("🐼 Animals", 16),
                  Selecte("😊 People & Society", 17),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("💪 Gym & Fitness", 24),
                  Selecte("🍔 Food & Drink", 25),

                ],
              ),
              Row (
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Selecte("💃 Dancing & singing",28 ),
                  Selecte("👨 Art", 29),
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
               Navigator.pushNamed(context, 'Country');
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
