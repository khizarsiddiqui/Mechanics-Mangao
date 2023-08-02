import 'package:flutter/material.dart';
import 'package:mechanics_mangao/providers/notification_provider.dart';
import 'package:provider/provider.dart';

class NotificationScreen extends StatelessWidget {
  static String routeName = "/notification";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              'Notifications',
              style: TextStyle(color: Colors.black),
            ),
            pinned: true,
            floating: true,
            expandedHeight: 60.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/notification_header_image.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Consumer<NotificationProvider>(
            builder: (context, notificationProvider, _) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    return _buildNotificationItem(context, notificationProvider.notifications[index], index);
                  },
                  childCount: notificationProvider.notifications.length,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem(BuildContext context, Map<String, dynamic> notification, int index) {
    return ListTile(
      title: Text(notification['title'].toString()),
      subtitle: Text(notification['description'].toString()),
      leading: Icon(Icons.notifications),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          _removeNotification(context, index);
        },
      ),
      onTap: () {
        // You can add custom logic here when a notification is tapped.
        // For example, navigate to a specific screen or display additional details.
      },
    );
  }

  void _removeNotification(BuildContext context, int index) {
    var notificationProvider = Provider.of<NotificationProvider>(context, listen: false);
    notificationProvider.removeNotification(index);
  }
}


// import 'package:flutter/material.dart';
//
// class NotificationScreen extends StatefulWidget {
//   static String routeName = "/notification";
//   @override
//   _NotificationScreenState createState() => _NotificationScreenState();
// }
//
// class _NotificationScreenState extends State<NotificationScreen> {
//   List<Map<String, String>> _notifications = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     body: CustomScrollView(
//       slivers: <Widget>[
//       SliverAppBar(
//       title: Text('Notifications', style: TextStyle(color: Colors.black),
//       ),
//       pinned: true,
//       floating: true,
//       expandedHeight: 60.0,
//       flexibleSpace: FlexibleSpaceBar(
//       background: Image.asset(
//       'assets/images/notification_header_image.jpg',
//         fit: BoxFit.cover,
//       ),
//       ),
//       ),
//         SliverList(
//           delegate: SliverChildBuilderDelegate(
//                 (context, index) {
//               return _buildNotificationItem(_notifications[index]);
//             },
//             childCount: _notifications.length,
//           ),
//         ),
//       ],
//     ),
//     );
//     }
// }
//
//   Widget _buildNotificationItem(Map<String, String> notification) {
//     return ListTile(
//       title: Text(notification['title']!),
//       subtitle: Text(notification['description']!),
//       leading: Icon(Icons.notifications),
//       onTap: () {
//         // You can add custom logic here when a notification is tapped.
//         // For example, navigate to a specific screen or display additional details.
//       },
//     );
//   }
//
