import 'dart:async';

import 'package:Balogs/InitialScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), ()=>
        Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>InitialUrlScreen())));
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor:Color((0xffffffff))));
    return  Scaffold(
      body: Container(
        color: Color(0xffffffff),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          //    SizedBox(height: 30,),
              Expanded(child: Center(
                child: Text("Hello.",style:TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,color: Color(0xff4054B2)) ),
              ),),
               Expanded(child: Align(
                   alignment: Alignment.topCenter,
                   child: Image.asset("assets/icon/icon.jpg",height: 160,width: 160,))),

            ],
          ),
        ),
      ),
    );
  }
}
