import 'package:flutter/material.dart';

// import '../../../main.dart';
// import '../../../theme.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false; // Default: Light Mode
  bool _autoPlayVideos = true;
  int _fontSize = 16; // Default font size
  bool _locationEnabled = true;
  bool _serviceRemindersEnabled = true;

  void toggleDarkMode() {
    setState(() {
      _darkModeEnabled = !_darkModeEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Apply dark mode theme based on _darkModeEnabled
    // var theme = _darkModeEnabled ? ThemeData.dark() : ThemeData.light();

    return Scaffold(
        appBar: AppBar(
          title: Text('Settings', style: TextStyle(color: Colors.black)),
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/images/notification_header_image.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/settings.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
            ),
          ),
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              SwitchListTile(
                title: Text('Enable Notifications', style: TextStyle(color: Colors.white)),
                value: _notificationsEnabled,
                onChanged: (value) {
                  setState(() {
                    _notificationsEnabled = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Dark Mode', style: TextStyle(color: Colors.white)),
                value: _darkModeEnabled,
                onChanged: (value) {
                  setState(() {
                    toggleDarkMode(); // Call the function to toggle dark mode
                  });
                },
              ),
              SwitchListTile(
                title: Text('Auto Play Videos', style: TextStyle(color: Colors.white)),
                value: _autoPlayVideos,
                onChanged: (value) {
                  setState(() {
                    _autoPlayVideos = value;
                  });
                },
              ),
              ListTile(
                title: Text('Font Size', style: TextStyle(color: Colors.white)),
                trailing: DropdownButton<int>(
                  value: _fontSize,
                  onChanged: (newValue) {
                    setState(() {
                      _fontSize = newValue!;
                    });
                  },
                  items: [14, 16, 18, 20].map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text('$value'),
                    );
                  }).toList(),
                ),
              ),
              SwitchListTile(
                title: Text('Enable Location', style: TextStyle(color: Colors.white)),
                value: _locationEnabled,
                onChanged: (value) {
                  setState(() {
                    _locationEnabled = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Service Reminders', style: TextStyle(color: Colors.white)),
                value: _serviceRemindersEnabled,
                onChanged: (value) {
                  setState(() {
                    _serviceRemindersEnabled = value;
                  });
                },
              ),
              // Add more settings options here
            ],
          ),
        ),
    );
  }
}

// class SettingsPage extends StatefulWidget {
//   @override
//   _SettingsPageState createState() => _SettingsPageState();
// }
//
// class _SettingsPageState extends State<SettingsPage> {
//   bool _notificationsEnabled = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Settings', style: TextStyle(color: Colors.black)),
//         flexibleSpace: FlexibleSpaceBar(
//           background: Image.asset(
//             'assets/images/notification_header_image.jpg',
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/settings.jpg'),
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
//           ),
//         ),
//         child: ListView(
//           padding: EdgeInsets.all(16.0),
//           children: [
//             SwitchListTile(
//               title: Text('Enable Notifications', style: TextStyle(color: Colors.white)),
//               value: _notificationsEnabled,
//               onChanged: (value) {
//                 setState(() {
//                   _notificationsEnabled = value;
//                 });
//               },
//             ),
//             // Add more settings options here
//           ],
//         ),
//       ),
//     );
//   }
// }
