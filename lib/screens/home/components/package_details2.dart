import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mechanics_mangao/providers/notification_provider.dart';

class PackageDetails2Page extends StatelessWidget {
  final String title;
  final String description;
  final String price;

  const PackageDetails2Page({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  static String routeName = "/package_details2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black, // Set text color to white
          ),
        ),
        flexibleSpace: Container( // Add background image to AppBar
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/notification_header_image.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/car_rep.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title: $title',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set text color to white
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Description: $description',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white, // Set text color to white
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Price: $price',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set text color to white
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _bookPackage(context);
              },
              child: Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }

  void _bookPackage(BuildContext context) {
    var notification = {
      'title': title,
      'description': description,
      'price': price,
    };

    // Access the NotificationProvider and add the notification.
    var notificationProvider = Provider.of<NotificationProvider>(context, listen: false);
    notificationProvider.addNotification(notification);

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Pass Booked')));
  }
}


