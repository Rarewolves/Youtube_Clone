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
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: ColorConstant.primaryblack,
        title: Row(children: [
          Image.asset("assets/icons/youtube.png",scale: 12,),
          SizedBox(width: 5,),
          Text('YouTube',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: ColorConstant.primarywhite),)
        ],),
        actions: [
         
          Image.asset("assets/icons/cast.png",scale: 14,color: ColorConstant.primarywhite,),
          Image.asset("assets/icons/bell (2).png",scale: 17,color: ColorConstant.primarywhite,),
                    Image.asset("assets/icons/search.png",scale: 17,color: ColorConstant.primarywhite,),
          

           
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 10,),
          SuggetionCard(mylist: DataBase.suggetionList,),
          SizedBox(height: 5,),
     ListView.builder(itemCount: DataBase.containercardList.length,
     shrinkWrap: true,
     physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => 
           ContainerCard(textlist: DataBase.containercardList[index]["textlist"],title: DataBase.containercardList[index]["Name"]),
      
      )
         
          
       
        ],),
      ),
    );
  }


}