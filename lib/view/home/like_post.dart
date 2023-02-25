import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../provider/home_provider.dart';


class near_post extends StatefulWidget {
  const near_post({Key? key}) : super(key: key);

  @override
  State<near_post> createState() => _near_postState();
}

class _near_postState extends State<near_post> {
  Home_Provider? home_providerf;
  Home_Provider? home_providert;
  @override
  Widget build(BuildContext context) {

    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: 50.h,
                width: 100.w,
                child: Image.asset("${home_providerf!.Datapickkk!.Image}",height: 50.h,width: 100.w,fit: BoxFit.fill,),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 3.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 3.w),
                      child: InkWell(onTap: (){
                        Navigator.pushNamed(context,'Bottombar');
                      },child: IconButton(onPressed: (){},icon:Icon(Icons.arrow_back_ios,color: Colors.white,size: 20.sp,))),
                    ),

                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: Text(" ${home_providerf!.Datapickkk!.Name}❤",style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w700),),
                ),
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.female,color: Color(0xFFFF4D67),size: 20.sp,),
                      Text("Gender : Female",style: TextStyle(color: Color(0xFFFF4D67),fontSize: 12.sp,),),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 3.h,),
          Container(height: 20.h,width: 100.w,color: Colors.black,),
          SizedBox(height: 3.h,),

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [InkWell(
              onTap: (){
                Navigator.pushNamed(context,'Lottie_Screen' );
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
                child: Center(child: Text("Enter Privet Call",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400)),
                ),
              ),
            ),],
          ),



        ],
      ),
    );
  }
}