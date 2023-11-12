import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';


class SuggetionCard extends StatefulWidget {
   SuggetionCard({required this.mylist});
  final List<String> mylist;

  @override
  State<SuggetionCard> createState() => _SuggetionCardState();
}

class _SuggetionCardState extends State<SuggetionCard> {
   int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
   return Container(
          child: SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
                  children: List.generate(widget.mylist.length, (index) =>    Padding(
                    padding: const EdgeInsets.all(6),
                    child: InkWell(onTap: () {
                      selectedindex = index;
                      setState(() {
                        
                      });
                    },
                      child: Container(
                      
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        
                        color: selectedindex ==index ? ColorConstant.primarywhite : ColorConstant.black,
                        
                        borderRadius: BorderRadius.circular(8)),
                           child: Center(child: Text(widget.mylist[index],
                           style: TextStyle(
                            fontSize: 16,
                            color: selectedindex==index ? ColorConstant.primaryblack : ColorConstant.primarywhite,
                            fontWeight: FontWeight.w500
                            ),
                            )
                            ), 
                                     ),
                    ),
                  ),),
                
                ),
          ),
        );
  }
}