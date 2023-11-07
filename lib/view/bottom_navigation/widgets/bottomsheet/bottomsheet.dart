import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({required this.addlist});
final List<Map> addlist;
  @override
  Widget build(BuildContext context) {
     return Column(
              children: List.generate(addlist.length, (index) =>
             Padding(
               padding: const EdgeInsets.only(bottom: 15),
               child: Row(children: [
                CircleAvatar(radius: 28,backgroundColor: ColorConstant.grey,
                    child: Image.asset(addlist[index]["images"],scale: 20,),
                ),
                SizedBox(width:12),
                   Text(addlist[index]["title"],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite),
                   ),
                  
               ],),
             )
             ),);
  }
}