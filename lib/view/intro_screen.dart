import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';




class intro1 extends StatefulWidget {
  const intro1({Key? key}) : super(key: key);

  @override
  State<intro1> createState() => _intro1State();

}
class _intro1State extends State<intro1> {
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: ()async {
      return false;
    },
      child: Scaffold(
        body: Container(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.asset("assets/images/1.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
              Column(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(onTap: (){

                      Navigator.pushNamed(context,'Intro2');

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
      ),
    );
  }
}
