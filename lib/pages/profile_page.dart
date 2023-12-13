// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:create_app/components/toolbar.dart';
import 'package:create_app/styles/app_text.dart';
import 'package:flutter/material.dart';

enum ProfileMenu { editProfile, logOut }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.editProfile:
                  Navigator.of(context).pushNamed('/edit-profile');
                  break;
                case ProfileMenu.logOut:
                  print('Log Out');
                  break;
              }
            },
            icon: Icon(Icons.more_vert_rounded),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Edit Profile'),
                    ],
                  ),
                  value: ProfileMenu.editProfile,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Log Out'),
                    ],
                  ),
                  value: ProfileMenu.logOut,
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            child: Image.asset(
              'assets/temp/user1.jpg',
              width: 90,
              height: 90,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Oliver Cristofer',
            style: AppText.header2,
          ),
          Text(
            'India',
            style: AppText.subtitle3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '575',
                    style: AppText.header2,
                  ),
                  Text(
                    'Followers',
                    style: AppText.subtitle2,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '85',
                    style: AppText.header2,
                  ),
                  Text(
                    'Posts',
                    style: AppText.subtitle2,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '345',
                    style: AppText.header2,
                  ),
                  Text(
                    'Following',
                    style: AppText.subtitle2,
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}