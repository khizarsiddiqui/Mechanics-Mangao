import 'package:flutter/material.dart';
import 'package:mechanics_mangao/screens/home/components/package_details2.dart';
import 'car_reg_form.dart';
import 'package_details.dart';

class Autoshow1Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Autoshow Details',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
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
            image: AssetImage('assets/images/pakwheels2.jpg'), // Add background image to the Container
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'Grand Festival is here!',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  backgroundColor: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
            SizedBox(height: 20),
            PackageCard(
              title: 'Port Grand Single Person',
              description: 'Includes pass eligible only for 1 person.',
              price: '\Rs999',
            ),
            PackageCard(
              title: 'Car Registration for Display',
              description: 'Includes a place for car, security and managerial necessities.',
              price: '\Rs1799',
            ),
            // Add more PackageCard widgets for additional engine service packages
          ],
        ),
      ),
    );
  }
}

class PackageCard extends StatelessWidget {
  final String title;
  final String description;
  final String price;

  const PackageCard({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black.withOpacity(0.5), // Set a transparent black color for the card background
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white, // Set the text color to white for better readability
          ),
        ),
        subtitle: Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            description,
            style: TextStyle(
              color: Colors.white, // Set the text color to white for better readability
            ),
          ),
        ),
        trailing: Text(
          price,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white, // Set the text color to white for better readability
          ),
        ),
        onTap: () {
          _navigateToPackageDetails(context, title, description, price);
        },
      ),
    );
  }

  void _navigateToPackageDetails(BuildContext context, String title, String description, String price) {
    if (title == 'Port Grand Single Person') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PackageDetails2Page(
            title: title,
            description: description,
            price: price,
          ),
        ),
      );
    } else if (title == 'Car Registration for Display') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CarRegistrationForm(),
        ),
      );
    }
  }

// void _navigateToPackageDetails(BuildContext context, String title, String description, String price) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => PackageDetails2Page(
  //         title: title,
  //         description: description,
  //         price: price,
  //       ),
  //     ),
  //   );
  // }
}


