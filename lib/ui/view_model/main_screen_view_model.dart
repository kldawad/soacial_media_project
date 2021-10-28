import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreenViewModel extends GetxController {
  final info = <dynamic>[
    {
      "icon": Icons.home,
      "title": "Home",
    },
    {
      "icon": Icons.location_on,
      "title": "Trending Map",
    },
    {
      "icon": Icons.help,
      "title": "Ask AnyOne",
    },
    {
      "icon": Icons.mail,
      "title": "inbox",
    },
    {
      "icon": Icons.notifications,
      "title": "Notification",
    },
  ].obs;
}
