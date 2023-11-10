import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/database/database.dart';

import 'package:youtube_clone/view/home_screen/widgets/container_card/container_card.dart';
import 'package:youtube_clone/view/home_screen/widgets/homesub_icons/homesub_icons.dart';
import 'package:youtube_clone/view/home_screen/widgets/suggetion_card/suggetion_card.dart';
import 'package:youtube_clone/view/subscription_screen/subscription_card/subscription_card.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryblack,
      body: CustomScrollView(slivers: [
         SliverAppBar(elevation: 0,
            backgroundColor: ColorConstant.primaryblack,
            expandedHeight: 209,
            floating: true,
          flexibleSpace: FlexibleSpaceBar(
            
            background:   Column(
              children: [SizedBox(height: 40,),
            HomesubIcons(),
                SizedBox(height: 10),
                SubscriptionCard(imagelist:DataBase.subscriptionstoryList),
                SizedBox(height: 8),
                 SuggetionCard(mylist: DataBase.subscriptionList,) ,
              ],
            ),
          ),
          
            
            
          

          ),
            SliverToBoxAdapter(
          child: Column(children: List.generate(DataBase.subscriptioncontainercardList.length, (index) =>
             ContainerCard(textlist: DataBase.subscriptioncontainercardList[index]["textlist"],title: DataBase.subscriptioncontainercardList[index]["Name"],image: DataBase.subscriptioncontainercardList[index]["Image"],avatarimage: DataBase.subscriptioncontainercardList[index]["avatarImage"]),
          
          
          ),),
         )
        
      ],),
    );
  }
}