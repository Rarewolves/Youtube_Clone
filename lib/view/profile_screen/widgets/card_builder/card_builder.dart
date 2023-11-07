import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';

class CardBuilder extends StatelessWidget {
  const CardBuilder({required this.titlelist});
  
 final List<Map> titlelist;


  @override
  Widget build(BuildContext context) {
    return Container(
                height: 100,
                decoration: BoxDecoration(color: ColorConstant.primaryblack,border: Border(bottom: BorderSide(width:1,color: ColorConstant.grey))),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: List.generate(titlelist.length, (index) =>  Row(children: [
                    SizedBox(width: 20,),
                   Image.asset(titlelist[index]["icons"],scale: 18,color: ColorConstant.primarywhite,),
                   SizedBox(width: 15,),
                      Text(titlelist[index]["title"],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: ColorConstant.primarywhite,)),
                 ],),),
                
                 
                 ),
               );
  }
}