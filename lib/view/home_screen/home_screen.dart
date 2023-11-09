import 'package:flutter/material.dart';
import 'package:youtube_clone/globalwidgets/search_screen/search_screen.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/database/database.dart';

import 'package:youtube_clone/view/home_screen/widgets/alertdilog/alertdilog.dart';
import 'package:youtube_clone/view/home_screen/widgets/container_card/container_card.dart';
import 'package:youtube_clone/view/home_screen/widgets/suggetion_card/suggetion_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryblack,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(elevation: 0,
            backgroundColor: ColorConstant.primaryblack,
            expandedHeight: 102,
            floating: true,
          flexibleSpace: FlexibleSpaceBar(
            
            background:   Column(
              children: [SizedBox(height: 40,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           
                  children: [
                    
                  
                  Row(children: [
                    SizedBox(width: 12),
                   
                Image.asset("assets/icons/youtube.png",scale: 18,),
                SizedBox(width: 5,),
                Text('YouTube',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: ColorConstant.primarywhite),)
          ],),
          Row(
                children: [
                 InkWell(onTap: () {
                   showDialog(context: context, builder: (context) =>
                   AlertDilog()
                                 
                   );
                 },
                  child: Image.asset("assets/icons/cast.png",scale: 18,color: ColorConstant.primarywhite,)),
                 SizedBox(width: 18,),
                Image.asset("assets/icons/bell.png",scale: 24,color: ColorConstant.primarywhite,),
                 SizedBox(width: 18,),
                          InkWell(onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SearchScreen(),));
                          },
                            child: Image.asset("assets/icons/search.png",scale: 20,color: ColorConstant.primarywhite,)),
                          SizedBox(width: 15,)
                         
          ],)
                  
                ],),
                SizedBox(height: 10),
                 SuggetionCard(mylist: DataBase.suggetionList,) ,
              ],
            ),
          ),
            
            
          

          ),
         SliverToBoxAdapter(
          child: Column(children: List.generate(DataBase.homecontainercardList.length, (index) =>
             ContainerCard(textlist: DataBase.homecontainercardList[index]["textlist"],title: DataBase.homecontainercardList[index]["Name"],image: DataBase.homecontainercardList[index]["Image"],avatarimage: DataBase.homecontainercardList[index]["avatarImage"]),
          
          
          ),),
         )
        ],
      ),
      

    );
  }


}