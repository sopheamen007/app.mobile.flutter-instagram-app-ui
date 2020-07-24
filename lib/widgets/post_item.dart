import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';

import '../theme/colors.dart';

class PostItem extends StatelessWidget {
  final String profileImg;
  final String name;
  final String postImg;
  final String caption;
  final isLoved;
  final String likedBy;
  final String viewCount;
  final String dayAgo;
  const PostItem({
    Key key, this.profileImg, this.name, this.postImg, this.isLoved, this.likedBy, this.viewCount, this.dayAgo, this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage(profileImg),fit: BoxFit.cover)
                  ),
                ),
                SizedBox(width: 15,),
                Text(name,style: TextStyle(
                  color: white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),)
                ],),
                Icon(LineIcons.ellipsis_h,color: white,)
              ],
            ),
          ),
          SizedBox(height: 12,),
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(postImg),fit: BoxFit.cover)
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
              children: <Widget>[
                isLoved ? SvgPicture.asset("assets/images/loved_icon.svg",width: 27,) : SvgPicture.asset("assets/images/love_icon.svg",width: 27,),
                SizedBox(width: 20,),
                 SvgPicture.asset("assets/images/comment_icon.svg",width: 27,),
                  SizedBox(width: 20,),
                 SvgPicture.asset("assets/images/message_icon.svg",width: 27,),
              ],
            ),
            SvgPicture.asset("assets/images/save_icon.svg",width: 27,),
              ],
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: "Liked by ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  )
                ),
                TextSpan(
                  text: "$likedBy ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                  )
                ),
                TextSpan(
                  text: "and ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  )
                ),
                TextSpan(
                  text: "Other",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                  )
                ),
                
              ]
            )),
          ),
          SizedBox(height: 12,),
          Padding(padding: EdgeInsets.only(left: 15,right: 15),
          child: RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: "$name ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                  )
                ),
                TextSpan(
                  text: "$caption",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  )
                ),

              ]
            ))),
            SizedBox(height: 12,),
            Padding(padding: EdgeInsets.only(left: 15,right: 15),
            child: Text("View $viewCount comments",style: TextStyle(
              color: white.withOpacity(0.5),
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),),
            ),
            SizedBox(height: 12,),
            Padding(padding: EdgeInsets.only(left: 15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage(profileImg),fit: BoxFit.cover)
                  ),
                ),
                SizedBox(width: 15,),
                Text("Add a comment...",style: TextStyle(
              color: white.withOpacity(0.5),
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),),
              ],
            ),
            Row(
              children: <Widget>[
                Text("😂",style: TextStyle(
                  fontSize: 
                  20
                ),),
                SizedBox(width: 10,),
                Text("😍",style: TextStyle(
                  fontSize: 
                  20
                ),),
                 SizedBox(width: 10,),
                 Icon(Icons.add_circle,color: white.withOpacity(0.5),size: 18,)
              ],
            )
              ],
            )
            ),
            SizedBox(height: 12,),
            Padding(padding: EdgeInsets.only(left: 15,right: 15),
            child:  Text("$dayAgo",style: TextStyle(
              color: white.withOpacity(0.5),
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),),
            )
        ],
      ),
    );
  }
}