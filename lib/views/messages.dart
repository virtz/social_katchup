import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_katchup/models/message.dart';
import 'package:social_katchup/utils/myTextStyle.dart';
import 'package:social_katchup/utils/routes.dart';
import 'package:social_katchup/widgets/messagesCard.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;
    ScreenUtil.init(context,
        width: defaultScreenWidth,
        height: defaultScreenHeight,
        allowFontScaling: true);

    return Scaffold(
        appBar: AppBar(
          title: Text('Inbox', style: myStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  icon: Icon(Icons.search, color: Colors.grey, size: 30),
                  onPressed: () {}),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
          child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) => Divider(),
              shrinkWrap: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                var message = messages[index];
                return GestureDetector(
                    onTap: () => gotoMessage(context, message),
                    child: MessagesCard(size: size, message: message));
              }),
        ));
  }

  gotoMessage(context, message) {
    Navigator.of(context).pushNamed(MessageViewRoute, arguments: Message1(
      sender:message.sender,
      avatarUrl:message.avatarUrl,
      time:message.time,
      content:message.content,
      number:message.number,
      online:message.online
    )
    );
  }
}
