import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

import 'myaccount.dart';
import 'notifications.dart';
import 'settings.dart';
import 'helpcenter.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () {
              // Handle "My Account" menu item press
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyAccountPage()),
              );
            },
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {
              // Handle "Notifications" menu item press
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsPage()),
              );
            },
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {
              // Handle "Settings" menu item press
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {
              // Handle "Help Center" menu item press
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpCenterPage()),
              );
            },
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              // Handle "Log Out" menu item press
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text('Log Out'),
                  content: Text('Are you sure you want to log out?'),
                  actions: <Widget>[
                    TextButton(
                      child: Text('Cancel'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      child: Text('Log Out'),
                      onPressed: () {
                        // Perform logout action
                        Navigator.of(context).popUntil((route) => route.isFirst);
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// import 'profile_menu.dart';
// import 'profile_pic.dart';
//
// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: EdgeInsets.symmetric(vertical: 20),
//       child: Column(
//         children: [
//           ProfilePic(),
//           SizedBox(height: 20),
//           ProfileMenu(
//             text: "My Account",
//             icon: "assets/icons/User Icon.svg",
//             press: () => {},
//           ),
//           ProfileMenu(
//             text: "Notifications",
//             icon: "assets/icons/Bell.svg",
//             press: () {},
//           ),
//           ProfileMenu(
//             text: "Settings",
//             icon: "assets/icons/Settings.svg",
//             press: () {},
//           ),
//           ProfileMenu(
//             text: "Help Center",
//             icon: "assets/icons/Question mark.svg",
//             press: () {},
//           ),
//           ProfileMenu(
//             text: "Log Out",
//             icon: "assets/icons/Log out.svg",
//             press: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }
