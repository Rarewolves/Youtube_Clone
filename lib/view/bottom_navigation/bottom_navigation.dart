import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/database/database.dart';
import 'package:youtube_clone/view/addscreen/addscreen.dart';
import 'package:youtube_clone/view/bottom_navigation/widgets/bottomsheet/bottomsheet.dart';
import 'package:youtube_clone/view/home_screen/home_screen.dart';
import 'package:youtube_clone/view/profile_screen/profile_screen.dart';
import 'package:youtube_clone/view/shorts_screen/shorts_screen.dart';
import 'package:youtube_clone/view/subscription_screen/subscription_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedindex =0;
  List<Widget> widgetlist =[
    HomeScreen(),
    ShortsScreen(),
    AddScreen(),
    SubscriptionScreen(),
    ProfileScreen()
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: widgetlist,
        index: selectedindex,
      ),
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: selectedindex,
       type: BottomNavigationBarType.fixed,
       backgroundColor: ColorConstant.primaryblack,
       selectedItemColor: ColorConstant.primarywhite,
       unselectedItemColor: ColorConstant.primarywhite,
       selectedLabelStyle: TextStyle(fontSize: 8),
       unselectedLabelStyle: TextStyle(fontSize: 8),
       elevation: 0,

       
       onTap: (index) {
         selectedindex=index;
         setState(() {
           
         });
       },
        
        items: [
      BottomNavigationBarItem(icon:Image.asset("assets/icons/house-black-silhouette-without-door.png",scale: 25,color: selectedindex==0 ? ColorConstant.primarywhite:ColorConstant.primarywhite,),
      label: 'Home'
      
      ),
         BottomNavigationBarItem(icon:Image.asset("assets/icons/record.png",scale: 25,color: selectedindex==1 ? ColorConstant.primarywhite:ColorConstant.primarywhite,),
      label: 'Shorts'
      ),
       BottomNavigationBarItem(icon:InkWell(
        onTap: () {
          showModalBottomSheet(backgroundColor:  ColorConstant.black,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(25))),

            context: context, builder:(context) => Container(
            
           child: Padding(
             padding: const EdgeInsets.only(left: 12,right: 15),
             child: Column(mainAxisSize: MainAxisSize.min,
              children: [
              SizedBox(height: 22,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Create",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: ColorConstant.primarywhite)),
                Image.asset("assets/icons/close.png",scale:26,color: ColorConstant.darkgrey,),
              
               
              ],),
              SizedBox(height: 25,),
              Bottomsheet(addlist: DataBase.AddbottomsheetList), 
              
             ],),
           ),

          ),);
        },
         child: CircleAvatar(backgroundColor: ColorConstant.primarywhite,radius: 16,child: 
         
         CircleAvatar(backgroundColor: ColorConstant.primaryblack,radius: 14,child: Image.asset("assets/icons/plus (1).png",scale: 28,color: ColorConstant.primarywhite,))
         
         ),
       ),
      label: ''
      ),
          BottomNavigationBarItem(icon:Image.asset("assets/icons/subscribe.png",scale: 25,color: selectedindex==2 ? ColorConstant.primarywhite:ColorConstant.primarywhite,),
      label: 'Scubscriptions'
      ),
          BottomNavigationBarItem(icon: CircleAvatar(radius: 14,backgroundColor: ColorConstant.primarywhite,
          child: Image.asset("assets/images/cat.png"),),
      label: 'You'
      ),
      

      ]),
      
    );
  }


}