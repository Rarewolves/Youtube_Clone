import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/imageconstant/imageconstant.dart';
import 'package:youtube_clone/view/home_screen/home_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryblack,
      appBar: AppBar(backgroundColor: ColorConstant.primaryblack,
        elevation: 0,toolbarHeight: 75,
        title: Container(padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(color: ColorConstant.black,borderRadius: BorderRadius.circular(20)),
          child: TextField(
            decoration: InputDecoration(border: InputBorder.none,hintText: 'Search YouTube',hintStyle: TextStyle(color: ColorConstant.grey,fontSize: 16,fontWeight: FontWeight.w500)),
          ),
        ),
        actions: [CircleAvatar(radius: 20,backgroundColor: ColorConstant.black,
        child: Image.asset(ImageConstant.mic,scale: 18,color: ColorConstant.primarywhite,),
        ),SizedBox(width: 10,)],
        leading: InkWell(onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
        },
          child: Image.asset(ImageConstant.backarrow,scale: 20,color: ColorConstant.primarywhite,)),
      ),
    );
  }
}
