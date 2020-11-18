import 'package:flutter/material.dart';
import 'package:social_katchup/models/newsfeed.dart';
import 'package:social_katchup/utils/myTextStyle.dart';
import 'package:social_katchup/widgets/newsFeedCard.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    List<Tab> myTabs = [
      Tab(
        child: Text('Posts'),
      ),
      Tab(child: Text('Liked'))
    ];

    var nf = newsfeed[0];
    TabController controller =
        TabController(length: myTabs.length, vsync: this);

    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          // body:
          backgroundColor: Colors.blueGrey[50], 
          appBar:PreferredSize(
            preferredSize:Size.fromHeight(size.height * 0.45),
            child:Container(
              color:Colors.white,
              child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage(nf.avatarUrl),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      nf.owner,
                      style: myStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text('New York',
                        style: myStyle(color: Colors.grey, fontSize: 12.0)),
                    SizedBox(height: 25.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('21',
                                style: myStyle(
                                    fontSize: 18.0, color: Colors.black54)),
                            Text('Posts',
                                style:
                                    myStyle(fontSize: 11.0, color: Colors.grey))
                          ],
                        ),
                        Column(
                          children: [
                            Text('981',
                                style: myStyle(
                                    fontSize: 18.0, color: Colors.black54)),
                            Text('Followers',
                                style:
                                    myStyle(fontSize: 11.0, color: Colors.grey))
                          ],
                        ),
                        Column(
                          children: [
                            Text('63',
                                style: myStyle(
                                    fontSize: 18.0, color: Colors.black54)),
                            Text('Following',
                                style:
                                    myStyle(fontSize: 11.0, color: Colors.grey))
                          ],
                        )
                      ],
                    ),
                      SizedBox(height:30.5),
                    TabBar(
                      indicatorSize:TabBarIndicatorSize.tab,
                      
                      controller:controller,
                        unselectedLabelColor: Colors.grey,
                        isScrollable: false,
                        indicatorWeight: 3,
                        labelColor: Colors.black,
                        indicatorColor: Theme.of(context).primaryColor,
                        tabs: myTabs),
              ],),
            )
          ),
          body:TabBarView(
            controller: controller,
            children: [
              ListView(
                      children: [
                        NewsFeedCard(
                          color:Colors.blueGrey[50],
                          size:size,
                          nf:nf,
                          index:0,
                        )
                      ],
                    ), ListView()],
                  )
            
        
    ));
  }
}
