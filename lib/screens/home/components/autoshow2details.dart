import 'package:flutter/material.dart';
import 'package:mechanics_mangao/screens/home/components/package_details2.dart';

class Autoshow2Details extends StatelessWidget {
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
        flexibleSpace: Container(
          // Add background image to AppBar
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
            image: AssetImage('assets/images/omni2.jpg'), // Add background image to the Container
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'Place roaring with the wheel spin!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  backgroundColor: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            SizedBox(height: 20),
            PackageCard(
              title: 'Event Exclusive Entry Pass',
              description: 'Includes entry pass for 1 person, validity (6 hours).',
              price: '\Rs1999',
            ),
            PackageCard(
              title: 'Premium Monthly Subscription',
              description:
              'Includes 30 day track subscription with multiple cart laps and other safety & security services.',
              price: '\Rs5999',
            ),
            // Add more PackageCard widgets for additional engine tuning packages
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
        builder: (context) => PackageDetails2Page(
          title: title,
          description: description,
          price: price,
        ),
      ),
    );
  }
}



