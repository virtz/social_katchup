import 'package:flutter/material.dart';
import 'package:social_katchup/models/message.dart';
import 'package:social_katchup/utils/index.dart';
import 'package:social_katchup/views/addPost.dart';
import 'package:social_katchup/views/message.dart';
import 'package:social_katchup/views/messages.dart';
import 'package:social_katchup/views/newsfeed.dart';
import 'package:social_katchup/views/notification.dart';
import 'package:social_katchup/views/profile.dart';
import 'package:social_katchup/views/signin.dart';
import 'package:social_katchup/views/signup.dart';

const String SignInViewRoute = '/signin';
const String SignUpViewRoute = '/signup';
const String NewsFeedViewRoute = '/feed';
const String MessagesViewRoute = '/messages';
const String MessageViewRoute = '/message';
const String ProfileViewRoute = '/profile';
const String NotificationViewRoute = '/notification';
const String IndexViewRoute = '/index';
const String AddPostViewRoute = '/addpost';

Route<dynamic> generateRoute(RouteSettings settings) {
  final args = settings.arguments;
  switch (settings.name) {
    case NewsFeedViewRoute:
      return MaterialPageRoute(builder: (BuildContext context) => NewsFeed());
      break;
    case IndexViewRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Index());
      break;
    case AddPostViewRoute:
      return MaterialPageRoute(builder: (BuildContext context) => AddPost());
      break;
    case SignInViewRoute:
      return MaterialPageRoute(builder: (BuildContext context) => SignIn());
      break;
    case SignUpViewRoute:
      return MaterialPageRoute(builder: (BuildContext context) => SignUp());
      break;
    case MessagesViewRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Messages());
      break;
    case MessageViewRoute:
      return MaterialPageRoute(builder: (BuildContext context) {
        Message1 message = args;
        return Message(
          sender: message.sender,
          avatarUrl: message.avatarUrl,
          time: message.time,
          content: message.content,
          number: message.number,
          online: message.online,
        );
      });
      break;
    case ProfileViewRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Profile());
      break;
    case NotificationViewRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => Notifications());
      break;
    default:
      return MaterialPageRoute(builder: (BuildContext context) => NewsFeed());
  }
}
