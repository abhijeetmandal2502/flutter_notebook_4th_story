import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DokoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DokoDetailPage(),
    );
  }
}

class DokoDetailPage extends StatefulWidget {
  @override
  _DokoDetailPageState createState() => _DokoDetailPageState();
}

class _DokoDetailPageState extends State<DokoDetailPage> {
  /// 8 23 90
  Color appAccentColor = Color(0xff08175A);

  /// 245 251 255
  Color cardBackgroundColor = Color(0xfff5fbff);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  color: appAccentColor,
                  image: DecorationImage(
                      image: NetworkImage("https://cdn.pixabay.com/photo/2016/04/22/16/42/mt-fuji-1346096__340.jpg"),
                      fit: BoxFit.cover)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 24,
                    right: 24,
                    top: 16,
                    child: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white.withOpacity(.4),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white.withOpacity(.4),
                            child: Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: MediaQuery.of(context).size.height / 4,
            right: 0,
            bottom: 0,
            child: Card(
              color: cardBackgroundColor,
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(32),
              )),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://avatars0.githubusercontent.com/u/19484515?s=460&u=0ec7b31ff9129826cccc5cd971887a9dd0e0a538&v=4"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Dreamwalker",
                                style: TextStyle(
                                  color: appAccentColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "Android/Flutter Developer",
                                  style: TextStyle(color: Colors.indigo[200], fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Chip(
                          label: Text(
                            "Follow",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: appAccentColor,
                          elevation: 8,
                          padding: EdgeInsets.symmetric(horizontal: 12),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        "Tokyo Travel Guide",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: appAccentColor,letterSpacing: 1.5),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}