import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          NotificationItem(
            title: 'New Purchase',
            subtitle: 'You have made a new purchase.',
            icon: Icons.shopping_bag,
          ),
          NotificationItem(
            title: 'Checkout Complete',
            subtitle: 'Your checkout process is complete.',
            icon: Icons.check_circle,
          ),
          NotificationItem(
            title: 'Item Added to Cart',
            subtitle: 'An item has been added to your cart.',
            icon: Icons.add_shopping_cart,
          ),
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const NotificationItem({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
