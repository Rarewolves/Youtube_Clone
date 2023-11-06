import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({required this.textlist,required this.title,required this.image,required this.avatarimage,});
  final List<String> textlist;
  final String title;
  final String image;
   final String avatarimage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 34),
      child: Column(
        children: [
    
          Container(
            height: 240,
            decoration: BoxDecoration(color: ColorConstant.primarywhite,image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)),
          ),
          SizedBox(height: 15,),
          Row(children: [
            SizedBox(width: 12),
            CircleAvatar(radius: 24,child: Image.asset(avatarimage),),
            SizedBox(width: 15,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
              Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: ColorConstant.primarywhite),),
              SizedBox(height: 10),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(children: List.generate(textlist.length, (index) =>
                Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(textlist[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: ColorConstant.grey,)),
                SizedBox(width: 5,),
            
                Text(".",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: ColorConstant.grey),),
                SizedBox(width: 5,)
                ],)
                ),),
              )
            ],)
          ],)
        ],
      ),
    );
  }
}