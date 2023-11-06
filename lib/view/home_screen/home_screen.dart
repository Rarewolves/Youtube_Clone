import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/database/database.dart';
import 'package:youtube_clone/view/home_screen/widgets/container_card/container_card.dart';
import 'package:youtube_clone/view/home_screen/widgets/suggetion_card/suggetion_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryblack,
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 48),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              
              Row(children: [
                SizedBox(width: 15,),
            Image.asset("assets/icons/youtube.png",scale: 16,),
            SizedBox(width: 5,),
            Text('YouTube',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: ColorConstant.primarywhite),)
          ],),
          Row(
            children: [
             Image.asset("assets/icons/cast.png",scale: 16,color: ColorConstant.primarywhite,),
             SizedBox(width: 20,),
            Image.asset("assets/icons/bell.png",scale: 20,color: ColorConstant.primarywhite,),
             SizedBox(width: 20,),
                      Image.asset("assets/icons/search.png",scale: 19,color: ColorConstant.primarywhite,),
                       SizedBox(width: 20,),
          ],)
              
            ],),
            SizedBox(height: 10,),
            SuggetionCard(mylist: DataBase.suggetionList,),
            SizedBox(height: 5,),
             ListView.builder(itemCount: DataBase.containercardList.length,
             shrinkWrap: true,
             physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => 
             ContainerCard(textlist: DataBase.containercardList[index]["textlist"],title: DataBase.containercardList[index]["Name"],image: DataBase.containercardList[index]["Image"],avatarimage: DataBase.containercardList[index]["avatarImage"]),
              
              )
           
            
               
          ],),
        ),
      ),
    );
  }


}