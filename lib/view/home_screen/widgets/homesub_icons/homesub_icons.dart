import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/imageconstant/imageconstant.dart';
import 'package:youtube_clone/view/home_screen/widgets/alertdilog/alertdilog.dart';
import 'package:youtube_clone/view/search_screen/search_screen.dart';

class HomesubIcons extends StatelessWidget {
  const HomesubIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           
                  children: [
                    
                  
                  Row(children: [
                    SizedBox(width: 12),
                   
                Image.asset(ImageConstant.youtube),
                SizedBox(width: 5,),
                  Image.asset(ImageConstant.youtubetext,color: ColorConstant.primarywhite,),
               
          ],),
          Row(
                children: [
                 InkWell(onTap: () {
                   showDialog(context: context, builder: (context) =>
                   AlertDilog()
                                 
                   );
                 },
                  child: Image.asset(ImageConstant.cast,scale: 18,color: ColorConstant.primarywhite,)),
                 SizedBox(width: 18,),
                Image.asset(ImageConstant.bell,color: ColorConstant.primarywhite,),
                 SizedBox(width: 18,),
                          InkWell(onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SearchScreen(),));
                          },
                            child: Image.asset(ImageConstant.search,color: ColorConstant.primarywhite,)),
                          SizedBox(width: 15,)
                         
          ],)
                  
                ],);
  }
}