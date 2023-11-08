import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/database/database.dart';

class ShortsScreen extends StatelessWidget {
  const ShortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryblack,
      body: PageView.builder(scrollDirection: Axis.vertical,
        itemCount: DataBase.shortslist.length,
        itemBuilder: (context, index) => Container(

        child: Image.asset(DataBase.shortslist[index],fit: BoxFit.cover,),
      ),),
   
    );
  }
}