import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';

class CardBuilder extends StatelessWidget {
  const CardBuilder({required this.titlelist});
  
 final List<Map> titlelist;


  @override
  Widget build(BuildContext context) {
    return Container(
                height: 140,
                decoration: BoxDecoration(color: ColorConstant.primaryblack,border: Border(bottom: BorderSide(color: ColorConstant.grey))),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: List.generate(titlelist.length, (index) =>  Row(children: [
                    SizedBox(width: 20,),
                   Image.asset(titlelist[index]["icons"],scale: 28,color: ColorConstant.primarywhite,),
                   SizedBox(width: 15,),
                      Text(titlelist[index]["title"],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite,)),
                 ],),),
                
                 
                 ),
               );
  }
}