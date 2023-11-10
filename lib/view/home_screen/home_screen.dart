import 'package:flutter/material.dart';
import 'package:youtube_clone/view/home_screen/widgets/homesub_icons/homesub_icons.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(elevation: 0,
            backgroundColor: ColorConstant.primaryblack,
            expandedHeight: 96,
            floating: true,
            
          flexibleSpace: FlexibleSpaceBar(
            
            background:   Column(
              children: [SizedBox(height: 40,),
              HomesubIcons(),
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