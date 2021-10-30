import 'package:flutter/material.dart';
import 'package:soacial_media_project/ui/utils/style/text/text_style.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "UserName",
                            style: kTitleWhite,
                          ),
                          CircleAvatar(
                            child: Icon(Icons.list),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Khaled Awad",
                        style: kHeadingWhite,
                      ),
                      Text(
                        "Career",
                        style: kHeadingWhite,
                      ),
                      Text(
                        "Location",
                        style: kHeadingWhite,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Follow",
                              textAlign: TextAlign.center,
                              style: kTitleBlack,
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).accentColor),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                "   Ask   ",
                                textAlign: TextAlign.start,
                                style: kTitleBlack,
                              ),
                            ),
                            style: ButtonStyle(
                              // backgroundColor: MaterialStateProperty.all(
                              //     Theme.of(context).accentColor),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomIconText(
                      number: "65.5K",
                      title: "Followers",
                    ),
                    CustomIconText(
                      number: "102",
                      title: "Following",
                    ),
                    CustomIconText(
                      number: "1.2M",
                      title: "Likes",
                    ),
                    CustomIconText(
                      number: "5.9M",
                      title: "Views",
                    ),
                  ],
                ),
              ),
              Text(
                "hello Hello Hello",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text(
                "Khaled Awad",
                style: Theme.of(context).textTheme.headline6,
              ),
              Divider(
                thickness: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIconText extends StatelessWidget {
  final String number;
  final String title;

  CustomIconText({required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: kTitleBlack,
        ),
        Text(
          title,
          style: kLightText,
        ),
      ],
    );
  }
}
