

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_katchup/utils/myTextStyle.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    Key key,
    @required this.size,
    @required this.notification,
  }) : super(key: key);

  final Size size;
  final  notification;

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 100,
        constraints: BoxConstraints(
          minHeight: 50.0,
          maxHeight: 370.0,
          minWidth: size.width,
          maxWidth: size.width,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 10.w, vertical: 10.w),
          child: Wrap(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                          backgroundImage:
                              AssetImage(notification.avatarUrl)),
                    ],
                  ),
                  Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(notification.title,
                            style: myStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold)),
                        notification.action != null
                            ? Text(notification.action,
                                style: myStyle(
                                    fontSize: 11.0,
                                    color: Colors.grey))
                            : Container(),
                        SizedBox(
                          height: 6.0,
                        ),
                        notification.subTitle != null
                            ? Text(notification.subTitle,
                                style: myStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ))
                            : Container(),
                        notification.content != null
                            ? Column(
                                children: [
                                  SizedBox(
                                    width: size.width - 150,
                                    child: Text(
                                        notification.content,
                                        maxLines: null,
                                        overflow:
                                            TextOverflow.clip,
                                        style: myStyle(
                                            color: Colors.black54,
                                            fontWeight:
                                                FontWeight.w400)),
                                  ),
                                ],
                              )
                            : Container(),
                      ]),
                  Text(notification.time,
                      style: myStyle(
                          fontSize: 11.0, color: Colors.black54))
                ],
              ),
            ],
          ),
        ));
  }
}