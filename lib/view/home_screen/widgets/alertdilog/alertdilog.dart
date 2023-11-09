import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/imageconstant/imageconstant.dart';

class AlertDilog extends StatelessWidget {
  const AlertDilog({super.key});

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(

                     title: Text('Connect to a  device',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: ColorConstant.primarywhite,),),
                     backgroundColor: ColorConstant.black,

                  actions: [
                    Column(children: [
                      Row(children: [
                        SizedBox(width: 10,),
                        SizedBox(height: 20,width: 20,
                          child: CircularProgressIndicator(color: ColorConstant.primarywhite,)),
                        SizedBox(width: 18,),
                      Text('Searching for devices',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite,),),
                      ],), 
                      SizedBox(height: 15,),
                       Row(children: [
                        SizedBox(width: 10,),
                        SizedBox(height: 20,width: 20,
                          child: Image.asset(ImageConstant.devices,color: ColorConstant.primarywhite,)),
                        SizedBox(width: 18,),
                      Text('Link with TV code',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite,),),
                      ],),
                      SizedBox(height: 15,),
                        Row(children: [
                        SizedBox(width: 10,),
                        SizedBox(height: 20,width: 20,
                          child: Image.asset(ImageConstant.info,color: ColorConstant.primarywhite,)),
                        SizedBox(width: 18,),
                      Text('Learn more',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: ColorConstant.primarywhite,),),
                      ],),
                      SizedBox(height: 15,),
                    ],)
                  ],
                   );
  }
}