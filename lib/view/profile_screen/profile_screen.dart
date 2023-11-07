import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/database/database.dart';
import 'package:youtube_clone/view/profile_screen/widgets/accountcard/accountcard.dart';
import 'package:youtube_clone/view/profile_screen/widgets/card_builder/card_builder.dart';
import 'package:youtube_clone/view/profile_screen/widgets/container_card/container_card.dart';
import 'package:youtube_clone/view/profile_screen/widgets/history_list/history_list.dart';
import 'package:youtube_clone/view/profile_screen/widgets/playlist_card/playlist_card.dart';

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
         body: SingleChildScrollView(
           child: Column(children: [
            SizedBox(height: 15,),
                 Padding(
                   padding: const EdgeInsets.only(left: 12),
                   child: Row(
                             children: [
                               CircleAvatar(radius: 40,child: Image.asset("assets/images/cat.png"),),
                               SizedBox(width: 12,),
                               Column(crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                    Text("hjjjfdfjdhfd",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: ColorConstant.primarywhite,)),
                    SizedBox(height: 10,),
                     Row(
                       children: [
                         Text("hjjjfdfjdhfd",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: ColorConstant.primarywhite,)),
                         SizedBox(width: 5,),
                         CircleAvatar(radius: 2,backgroundColor: ColorConstant.primarywhite,),
                                 SizedBox(width: 5,),
                          Text("hjjjfdfjdhfd",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: ColorConstant.grey,)),
                           SizedBox(width: 5,),
                           Image.asset("assets/icons/math.png",scale: 34,color: ColorConstant.primarywhite,),
                               
                       ],
                     ),
                                 ],
                               )
                               
                             ],
                   ),
                 ),
                 SizedBox(height: 18,),
                 Padding(
                   padding: const EdgeInsets.only(left: 12),
                   child: AccountCard(accountlist: DataBase.AccountList,),
                 ),
                 SizedBox(height: 15,),
                 Padding(
                   padding: const EdgeInsets.only(left: 12),
                   child: HistoryList(),
                 ),
                 SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: ListView.builder(shrinkWrap: true,
                  itemCount: DataBase.playlistcardlist.length,
                  physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => PlaylistCard(heading: DataBase.playlistcardlist[index]["heading"],imagetitlelist: DataBase.playlistcardlist[index]["listmap"] ,),)
                ),
                 SizedBox(height: 20,),
                 ContainerCard(),
                 ListView.builder(itemCount: DataBase.cardbuildlist.length,
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => CardBuilder(titlelist: DataBase.cardbuildlist[index]["map"]),)
         
               ],),
         ),
    );
  }





}