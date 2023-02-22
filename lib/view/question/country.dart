import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/utilies/constant.dart';


import '../../provider/home_provider.dart';

class Country extends StatefulWidget {
  const Country({Key? key}) : super(key: key);

  @override
  State<Country> createState() => _CountryState();
}
Home_Provider? home_providerf;
Home_Provider? home_providert;
class _CountryState extends State<Country> {
  @override
  Widget build(BuildContext context) {
    bool value = false;
    home_providerf = Provider.of<Home_Provider>(context, listen: false);
    home_providert = Provider.of<Home_Provider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        elevation: 00,
        centerTitle: true,
        title: Text("Select your country",style: TextStyle(color:  Color(0xff790ECC)),),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          ListView.builder( itemCount:home_providerf!.c1.length ,
            itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xff790ECC),width: 2)
                ),
                child: ListTile(
                  leading:Container(height:6.h,width: 12.w,child: Image.asset("assets/images/country/india.png"),),
                  title: Text("india"),

                ),
              ),
            );


          },),
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
                        color:  AppColor.lightviolet,)
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
}
