import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

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
    home_providerf = Provider.of<Home_Provider>(context, listen: false);
    home_providert = Provider.of<Home_Provider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          ListView.builder( itemCount:home_providerf!.c1.length ,
            itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey,width: 2)
                ),
                child: ListTile(
                  leading:Container(height:5.h,width: 10.w,color: Colors.cyanAccent,),
                  title: Text("lio"),
                  subtitle: Text("jhbbguyc"),


                ),
              ),
            );





          },),
        ],
      ),
    );
  }
}
