import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/database/database.dart';
import 'package:youtube_clone/utils/imageconstant/imageconstant.dart';
import 'package:youtube_clone/view/bottom_navigation/bottom_navigation.dart';
import 'package:youtube_clone/view/search_screen/widgets/search_list/search_list.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryblack,
  //  appBar: AppBar(backgroundColor: ColorConstant.primaryblack,
  //             toolbarHeight: 65,
  //             elevation: 0,
    
  //   title:  Container(
  //             child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: [
  //                  InkWell(onTap: () {
  //             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigation(),));
  //           },
  //             child: Image.asset(ImageConstant.backarrow,scale: 24,color: ColorConstant.primarywhite,)),
  //          SizedBox(width: 15,),
              
  //              Container(height: 40,width: 280,
  //         decoration: BoxDecoration(color: ColorConstant.black,borderRadius: BorderRadius.circular(20)),
  //         child: Padding(
  //           padding: const EdgeInsets.only(left: 14),
  //           child: TextField(
  //             decoration: InputDecoration(border: InputBorder.none,hintText: 'Search YouTube',hintStyle: TextStyle(color: ColorConstant.grey,fontSize: 16,fontWeight: FontWeight.w500)),
  //           ),
  //         ),
  //         ),
  //          SizedBox(width: 10,),
  //            CircleAvatar(radius: 18,backgroundColor: ColorConstant.black,
  //           child: Image.asset(ImageConstant.mic,scale: 24,color: ColorConstant.primarywhite,),
  //           ),SizedBox(width: 15,)
  //               ],
  //             ),
  //           ),),
  appBar: AppBar(elevation: 0,
  backgroundColor: ColorConstant.primaryblack,
    leading: InkWell(onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigation(),));
            },
              child: Image.asset(ImageConstant.backarrow,scale: 24,color: ColorConstant.primarywhite,)),
title:  Container(height: 40,width: 300,
          decoration: BoxDecoration(color: ColorConstant.black,borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(left: 14),
            child: TextField(
              decoration: InputDecoration(border: InputBorder.none,hintText: 'Search YouTube',hintStyle: TextStyle(color: ColorConstant.grey,fontSize: 16,fontWeight: FontWeight.w500)),
            ),
          ),
          ),
          toolbarHeight: 65,
          actions: [
              CircleAvatar(radius: 18,backgroundColor: ColorConstant.black,
            child: Image.asset(ImageConstant.mic,scale: 24,color: ColorConstant.primarywhite,),),
            SizedBox(width: 15,)

          ]



  ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           
         
        ListView.builder(itemCount: DataBase.searchlist.length,
       
           shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
            
          
          itemBuilder: (context, index) => SearchList(image: DataBase.searchlist[index]["images"],search: DataBase.searchlist[index]["search"],)
          ),
        
          
          ],
          
        ),
      ),
    );
  }
}
