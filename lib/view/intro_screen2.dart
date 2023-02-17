import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class Intro2 extends StatefulWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.asset("assets/images/2.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
            Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context,'intro3');
                  },
                  child: Center(
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
                SizedBox(height: 30,),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
