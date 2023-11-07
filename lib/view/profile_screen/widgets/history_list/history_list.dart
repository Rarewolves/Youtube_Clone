import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
                
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("History",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: ColorConstant.primarywhite,)),
                    Container(height: 35,width:80,
                      decoration: BoxDecoration(color: ColorConstant.primaryblack,borderRadius: BorderRadius.circular(20),border: Border.all(color: ColorConstant.black,width: 2)),
                      child:   Center(child: Text("view All",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: ColorConstant.primarywhite,))),

                      
                      ),

                  ],),
                ),
                SizedBox(height: 15,),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(children: List.generate(4, (index) => 
                  
                  Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: Container(
                        height: 100,width: 160,
                        decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(18)
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("view All",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: ColorConstant.primarywhite,)),
                            SizedBox(height: 5,),
                                 Text("view All",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: ColorConstant.grey,)),
                          ],
                        ),
                        SizedBox(width: 65,),
                        Icon(Icons.more_vert_outlined,color: ColorConstant.primarywhite,size: 24,)
                      ],
                    )
                  ],)
                  
                  ),),
                )
               ],);
  }
}