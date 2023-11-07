import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';

class SubscriptionCard extends StatelessWidget {
   SubscriptionCard({required this.imagelist,});
  final List<Map> imagelist;
   

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50),
      child: Container(
        child: SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(children:List.generate(imagelist.length, (index) => 
          
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(radius: 35,child: Image.asset(imagelist[index]["image"]),),
              ),
              SizedBox(height: 5),
              Text(imagelist[index]["Names"],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: ColorConstant.grey,))
            ],
          )
          
          ),),
        ),
      ),
    );
  }
}