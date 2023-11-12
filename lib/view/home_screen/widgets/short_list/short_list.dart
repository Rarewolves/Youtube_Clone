import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/imageconstant/imageconstant.dart';

class ShortList extends StatelessWidget {
  const ShortList({super.key,required this.imageslist});
final List<String> imageslist;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(ImageConstant.bigshort_icon,scale: 56,),
          
            Text("Shorts",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: ColorConstant.primarywhite,)),
          ],
        ),


        Padding(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            itemCount: imageslist.length,
            shrinkWrap: true,

            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 8,
                mainAxisExtent: 265
                ),
            itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(imageslist[index]),fit: BoxFit.cover)
          ),
            ),
          ),
        )
      ],
    );
  }
}
