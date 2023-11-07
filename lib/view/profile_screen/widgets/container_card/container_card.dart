import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 100,
                decoration: BoxDecoration(color: ColorConstant.primaryblack,border: Border(bottom: BorderSide(width:1,color: ColorConstant.grey))),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Row(children: [
                    SizedBox(width: 20,),
                    Image.asset("assets/icons/cast.png",scale: 18,color: ColorConstant.primarywhite,),
                    SizedBox(width: 15,),
                       Text("History",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: ColorConstant.primarywhite,)),
                  ],),
                     Row(
                      children: [
                         SizedBox(width: 20,),
                    Image.asset("assets/icons/cast.png",scale: 18,color: ColorConstant.primarywhite,),
                    SizedBox(width: 15,),
                       Column(crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("History",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: ColorConstant.primarywhite,)),
                              Text("History",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: ColorConstant.grey,)),
                         ],
                       ),
                       SizedBox(width: 270,),
                       CircleAvatar(radius: 10,backgroundColor: Colors.white,)
                  ],),
                ],),
               );
  }
}