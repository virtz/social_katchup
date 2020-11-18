import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_katchup/views/addPost.dart';
import 'package:social_katchup/views/messages.dart';
import 'package:social_katchup/views/newsfeed.dart';
import 'package:social_katchup/views/notification.dart';
import 'package:social_katchup/views/profile.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final List<Widget> _children = [
    NewsFeed(),
    Messages(),
    AddPost(),
    Notifications(),
    Profile()
  ];
  int cindex = 0;



  List items = [
    {'index': 0, 'img': 'assets/icons/home1.svg'},
    {'index': 1, 'img': 'assets/icons/messages1.svg'},
    {'index': 2, 'img': Icons.add},
    {'index': 3, 'img': 'assets/icons/notification.svg'},
    {'index': 4, 'img': 'assets/images/user.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[cindex],
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(left:8.0,right:8.0,bottom:8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [for (Map item in items) buildItem(item)],
          ),
        ),
      ),
    );
  }

  buildItem(Map item) {
    int index = item['index'];
    if (index == 2) {
      return FloatingActionButton(
        mini: true,
        child: Icon(item['img']),
        onPressed: () {
          cindex = index;
        },
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 7.0,
      );
    } else {
      return buildBottomIcon(item, profile: index == 4);
    }
  }

  buildBottomIcon(Map item, {bool profile = false}) {
    int index = item['index'];
    Color primaryPink = Theme.of(context).primaryColor;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: index == cindex,
          child: Container(height: 3.0, width: 50.0, color: primaryPink),
        ),
        IconButton(
          icon: Visibility(
            visible: !profile,
            replacement: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(item['img']),
            ),
            child: SvgPicture.asset(
              item['img'],
              height: 23.0,
              color: index == cindex ? Colors.black : Colors.grey,
            ),
          ),
          onPressed: () {
            cindex = index;
            setState(() {});
          },
        ),
      ],
    );
  }
}