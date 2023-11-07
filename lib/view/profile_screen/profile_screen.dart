import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/database/database.dart';
import 'package:youtube_clone/view/profile_screen/accountcard/accountcard.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorConstant.primaryblack,
      appBar: AppBar(
        actions: [   Image.asset("assets/icons/cast.png",scale: 18,color: ColorConstant.primarywhite,),
               
                Image.asset("assets/icons/bell.png",scale: 24,color: ColorConstant.primarywhite,),
              
                          Image.asset("assets/icons/search.png",scale: 20,color: ColorConstant.primarywhite,),
                       
                           Image.asset("assets/icons/gear.png",scale: 21,color: ColorConstant.primarywhite,),
                          ],
                          toolbarHeight: 50,
                          backgroundColor: ColorConstant.primaryblack,
      ),
         body: Padding(
           padding: const EdgeInsets.only(left: 12),
           child: Column(children: [
            SizedBox(height: 15,),
                 Row(
            children: [
              CircleAvatar(radius: 40,child: Image.asset("assets/images/cat.png"),),
              SizedBox(width: 12,),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("hjjjfdfjdhfd",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: ColorConstant.primarywhite,)),
                  SizedBox(height: 10,),
                   Row(
                     children: [
                       Text("hjjjfdfjdhfd",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite,)),
                       SizedBox(width: 5,),
                       CircleAvatar(radius: 2,backgroundColor: ColorConstant.primarywhite,),
                               SizedBox(width: 5,),
                        Text("hjjjfdfjdhfd",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: ColorConstant.grey,)),
                         SizedBox(width: 5,),
                         Image.asset("assets/icons/math.png",scale: 34,color: ColorConstant.primarywhite,),
              
                     ],
                   ),
                ],
              )
              
            ],
                 ),
                 SizedBox(height: 18,),
                 AccountCard(accountlist: DataBase.AccountList,)
               ],),
         ),
    );
  }


}