import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';

class ShortList extends StatelessWidget {
  const ShortList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(child: Column(
            children: [
              Text("hari",style: TextStyle(color: ColorConstant.primarywhite),),
                            SizedBox(height: 20,),
          SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(children: List.generate(2, (index) =>    Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      
                  Container(height: 260,width: 190,
                  decoration: BoxDecoration(color: ColorConstant.primarywhite,borderRadius: BorderRadius.circular(12)),),
                 
                     Container(height: 260,width: 190,
                  decoration: BoxDecoration(color: ColorConstant.primarywhite,borderRadius: BorderRadius.circular(12)),),
              
                 ],),
            )
               
               
               ),
               
               
               ),
          )
            ],
           ),);
  }
}