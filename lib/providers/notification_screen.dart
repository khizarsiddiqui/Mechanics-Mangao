import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  static String routeName = "/notification";
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Map<String, String>> _notifications = [
    {
      'title': 'Catalytic Converter Cleaning',
      'description': 'Your catalytic converter cleaning is scheduled for tomorrow.',
    },
    {
      'title': 'Interior Cleaning',
      'description': 'Interior cleaning service is due next week. Book now!',
    },
    {
      'title': 'Engine Tuning',
      'description': 'Engine tuning scheduled for next month. Confirm the booking.',
    },
    {
      'title': 'Engine Services',
      'description': 'Don\'t forget your regular engine service checkup.',
    },
  ];

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: CustomScrollView(
  //         slivers: <Widget>[
  //     SliverAppBar(
  //     title: Text('Notifications'),
  //     pinned: true,
  //     floating: true,
  //     expandedHeight: 150.0,
  //     flexibleSpace: FlexibleSpaceBar(
  //       background: Image.asset(
  //         'assets/notification_header_image.jpg',
  //         fit: BoxFit.cover,
  //       ),
  //     ),
  //   ),

    @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: CustomScrollView(
      slivers: <Widget>[
      SliverAppBar(
      title: Text('Notifications', style: TextStyle(color: Colors.black),
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
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) {
              return _buildNotificationItem(_notifications[index]);
            },
            childCount: _notifications.length,
          ),
        ),
      ],
    ),
    );
    }
}

  // Widget _buildNotificationList() {
  //   return ListView.builder(
  //     itemCount: _notifications.length,
  //     itemBuilder: (context, index) {
  //       return _buildNotificationItem(_notifications[index]);
  //     },
  //   );
  // }

  Widget _buildNotificationItem(Map<String, String> notification) {
    return ListTile(
      title: Text(notification['title']!),
      subtitle: Text(notification['description']!),
      leading: Icon(Icons.notifications),
      onTap: () {
        // You can add custom logic here when a notification is tapped.
        // For example, navigate to a specific screen or display additional details.
      },
    );
  }

