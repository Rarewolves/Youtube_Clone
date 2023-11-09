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
                   showDialog(context: context, builder: (context) => AlertDialog(

                     title: Text('Connect to a  device',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: ColorConstant.primarywhite,),),
                     backgroundColor: ColorConstant.black,

                  actions: [
                    Column(children: [
                      Row(children: [
                        SizedBox(width: 5,),
                        SizedBox(height: 20,width: 20,
                          child: CircularProgressIndicator(color: ColorConstant.primarywhite,)),
                        SizedBox(width: 10,),
                      Text('Searching for devices',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite,),),
                      ],)
                    ],)
                  ],
                   ),
                                 
                   );
                 },
                  child: Image.asset("assets/icons/cast.png",scale: 18,color: ColorConstant.primarywhite,)),
                 SizedBox(width: 18,),
                Image.asset("assets/icons/bell.png",scale: 24,color: ColorConstant.primarywhite,),
                 SizedBox(width: 18,),
                          Image.asset("assets/icons/search.png",scale: 20,color: ColorConstant.primarywhite,),
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