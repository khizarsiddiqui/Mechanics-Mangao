import 'package:flutter/material.dart';
import 'package_details.dart';

class InteriorCleaningDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interior Cleaning Details',
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
            image: AssetImage('assets/images/car_rep2.jpg'), // Add background image to the Container
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'Packages',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ),
            SizedBox(height: 20),
            PackageCard(
              title: 'Basic Interior Cleaning',
              description: 'Includes vacuuming, dusting, and surface cleaning.',
              price: '\Rs439',
            ),
            PackageCard(
              title: 'Premium Interior Cleaning',
              description: 'Includes vacuuming, dusting, surface cleaning, and upholstery treatment.',
              price: '\Rs879',
            ),
            // Add more PackageCard widgets for additional interior cleaning packages
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
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PackageDetailsPage(
          title: title,
          description: description,
          price: price,
        ),
      ),
    );
  }
}
