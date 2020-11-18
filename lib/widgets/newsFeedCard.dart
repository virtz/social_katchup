import 'package:flutter/material.dart';
import 'package:social_katchup/utils/myTextStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsFeedCard extends StatelessWidget {
  const NewsFeedCard({
    Key key,
    @required this.size,
    @required this.nf,
    this.index, this.color,
  }) : super(key: key);

  final Size size;
  final nf;
  final int index;
  final color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color:color==null?Colors.white:color,
      child: Container(
          // height: 100,
          constraints: BoxConstraints(
            minHeight: 50.0,
            maxHeight: 370.0,
            minWidth: size.width,
            maxWidth: size.width,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
            child: Wrap(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              backgroundImage: AssetImage(nf.avatarUrl)),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(nf.owner,
                                  style: myStyle(
                                      fontSize: 14.0,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600)),
                              Text(nf.date,
                                  style: myStyle(
                                      fontSize: 12.0, color: Colors.grey))
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.more_horiz, size: 30, color: Colors.grey),
                    ]),
                Padding(
                  padding: EdgeInsets.only(left: 55.w, top: 8.w),
                  child: Column(
                    children: [
                      Text(nf.content,
                          style: myStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400)),
                      SizedBox(height: 8.0),
                      nf.imageUrl != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  child: Image(image: AssetImage(nf.imageUrl))),
                            )
                          : SizedBox.shrink(),
                      SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                index != 1
                                    ? Icon(Icons.favorite_border,
                                        color: Colors.grey)
                                    : Container(width: 25),
                                SizedBox(width: 8),
                                Icon(Icons.message, color: Colors.grey)
                              ],
                            ),
                            Text(nf.price,
                                style: myStyle(
                                    color: Colors.black54,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500))
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
