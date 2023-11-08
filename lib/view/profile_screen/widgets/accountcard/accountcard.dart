import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({required this.accountlist});
  final List<Map> accountlist;

  @override
  Widget build(BuildContext context) {
      return Container(
                child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(children: List.generate(accountlist.length, (index) => Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      width: 150,height: 32,
                      decoration: BoxDecoration(color: ColorConstant.black,borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          SizedBox(width: 15,),
                        Image.asset(accountlist[index]["icons"],scale: 30,color: ColorConstant.primarywhite,),
                        SizedBox(width: 8,),
                          Text(accountlist[index]["title"],style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: ColorConstant.primarywhite,)),
                            SizedBox(width: 10,),
                      ],),
                    ),
                  ))),
                ),
               );
  }
}