import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';


class SuggetionCard extends StatelessWidget {
  const SuggetionCard({required this.mylist});
  final List<String> mylist;

  @override
  Widget build(BuildContext context) {
   return Container(
          child: SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
                  children: List.generate(mylist.length, (index) =>    Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(color: ColorConstant.black,borderRadius: BorderRadius.circular(8)),
                         child: Center(child: Text(mylist[index],style: TextStyle(fontSize: 16,color: ColorConstant.primarywhite,fontWeight: FontWeight.w400),)), 
                                   ),
                  ),),
                
                ),
          ),
        );
  }
}