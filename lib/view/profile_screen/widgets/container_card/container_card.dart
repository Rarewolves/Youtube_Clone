import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/imageconstant/imageconstant.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 140,
                decoration: BoxDecoration(color: ColorConstant.primaryblack,border: Border(bottom: BorderSide(color: ColorConstant.grey))),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Row(children: [
                    SizedBox(width: 20,),
                    Image.asset(ImageConstant.yourvideo,color: ColorConstant.primarywhite,),
                    SizedBox(width: 15,),
                       Text("Your videos",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite,)),
                  ],),
                     Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                   Row(children: [ SizedBox(width: 20,),
                     Image.asset(ImageConstant.download,scale: 28,color: ColorConstant.primarywhite,),
                    SizedBox(width: 15,),
                       Column(crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Downloads",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite,)),
                              Text("1 video",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: ColorConstant.grey,)),
                         ],
                       ),],),
                    
                       Padding(
                         padding: const EdgeInsets.only(right: 20),
                         child: Image.asset(ImageConstant.tick,color: ColorConstant.primarywhite,),
                       ),
                       

                  ],),
                ],),
               );
  }
}