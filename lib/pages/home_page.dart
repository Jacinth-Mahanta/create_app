// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:create_app/components/post_item.dart';
import 'package:create_app/components/toolbar.dart';
import 'package:create_app/styles/app_colors.dart';
import 'package:create_app/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: Toolbar(
        title: 'Flutter Project',
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/svg/location.svg'),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 20,
          );
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add('User number $i');
    }
  }
}