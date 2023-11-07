import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({required this.addlist});
final List<String> addlist;
  @override
  Widget build(BuildContext context) {
     return Column(
              children: List.generate(addlist.length, (index) =>
             Padding(
               padding: const EdgeInsets.only(bottom: 15),
               child: Row(children: [
                CircleAvatar(radius: 32,backgroundColor: ColorConstant.grey,),
                SizedBox(width:12),
                   Text(addlist[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite),
                   ),
                  
               ],),
             )
             ),);
  }
}