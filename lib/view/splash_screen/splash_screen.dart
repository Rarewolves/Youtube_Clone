import 'dart:async';

import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/view/bottom_navigation/bottom_navigation.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
  Timer( Duration(seconds: 2), () { 
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigation()));
  });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primarywhite,
      body: Center(child: Image.asset("assets/icons/youtube.png",scale: 4,)),
    );
  }
}