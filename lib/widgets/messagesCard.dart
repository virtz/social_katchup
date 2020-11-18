
import 'package:flutter/material.dart';
import 'package:social_katchup/models/message.dart';
import 'package:social_katchup/utils/myTextStyle.dart';

class MessagesCard extends StatelessWidget {
  const MessagesCard({
    Key key,
    @required this.size,
    @required this.message,
  }) : super(key: key);

  final Size size;
  final Message1 message;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * 0.1,
        // width:double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage(message.avatarUrl),
                          ),
                         message.online==true? Positioned(
                              bottom: 3,
                              right:0.0,
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.white,
                                child: Container(
                                  // height: 20,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              )):Container()
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(message.sender,
                              style: myStyle(
                                  fontWeight: FontWeight.w400,
                                  color: message.number == null
                                      ? Colors.black
                                      : Theme.of(context)
                                          .primaryColor)),
                          SizedBox(height: 8),
                          SizedBox(
                              width: size.width - 150,
                              child: Text(
                                message.content,
                                style: myStyle(
                                    fontSize: 13.0,
                                    color: Colors.black54),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          message.number != null
                              ? CircleAvatar(
                                  minRadius: 8,
                                  child: Text(
                                      message.number.toString(),
                                      style: myStyle(
                                          fontSize: 10.5,
                                          color: Colors.white)),
                                  backgroundColor: Theme.of(context)
                                      .primaryColor)
                              : Container(),
                          SizedBox(height: 5.0),
                          Text(message.time,
                              style: myStyle(
                                  fontSize: 11.0,
                                  color: Colors.black54))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            // Divider(),
          ],
        ));
  }
}
