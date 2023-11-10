import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/imageconstant/imageconstant.dart';

class SearchList extends StatelessWidget {
   SearchList({super.key,required this.image,required this.search});
 final String image;
 final String search;
  @override
  Widget build(BuildContext context) {
    return   Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(padding: EdgeInsets.all(8),
              
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(children: [        Image.asset(ImageConstant.activity,scale: 20,color: ColorConstant.primarywhite,),SizedBox(width: 12,),
              Text(search,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: ColorConstant.primarywhite,)),],),
                Row(children: [
                              Container(height: 50,width: 90,decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)),),
                              SizedBox(width: 12,),
                Image.asset(ImageConstant.up_leftarrow,scale: 20,color: ColorConstant.primarywhite,),
                ],)
          
            ],)
            
            ,),
          );
  }
}