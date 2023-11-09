import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/imageconstant/imageconstant.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({required this.heading, required this.imagetitlelist,});
  final String heading;
final List<Map> imagetitlelist;




  @override
  Widget build(BuildContext context) {
     return Column(children: [
                
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(heading,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: ColorConstant.primarywhite,)),
                    Container(height: 35,width:65,
                      decoration: BoxDecoration(color: ColorConstant.primaryblack,borderRadius: BorderRadius.circular(20),border: Border.all(color: ColorConstant.black,width: 1)),
                      child:   Center(child: Text("view All",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: ColorConstant.primarywhite,))),
     
                      
                      ),
     
                  ],),
                ),
                SizedBox(height: 15,),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(children: List.generate(imagetitlelist.length+1, (index) => 
                  imagetitlelist.length==index ?Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(height: 90,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [CircleAvatar(radius: 22,backgroundColor: ColorConstant.black,child: Image.asset(ImageConstant.plusicon,scale: 28,color: ColorConstant.primarywhite,),),Text("New playlist",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite,))],),
                    ),
                  )
                  :
                  Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: 90,width: 140,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),image: DecorationImage(image: AssetImage(imagetitlelist[index]["images"],),fit: BoxFit.cover)
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(imagetitlelist[index]["title"],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite,)),
                            SizedBox(height: 5,),
                                 Text(imagetitlelist[index]["subtitle"],style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: ColorConstant.grey,)),
                          ],
                        ),
                        SizedBox(width: 55,),
                        Icon(Icons.more_vert_outlined,color: ColorConstant.primarywhite,size: 15,)
                      ],
                    )
                  ],)
                  
                  ),),
                )
               ],);
  }
}