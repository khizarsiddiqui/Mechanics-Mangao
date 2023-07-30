import 'package:flutter/material.dart';
import 'package_details.dart';

class EngineServiceDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Engine Service Details',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'Packages',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20),
            PackageCard(
              title: 'Basic Engine Service',
              description: 'Includes oil change and filter replacement.',
              price: '\Rs699',
            ),
            PackageCard(
              title: 'Advanced Engine Service',
              description: 'Includes oil change, filter replacement, and engine inspection.',
              price: '\Rs1149',
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
      color: Colors.lightBlue,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(description),
        ),
        trailing: Text(
          price,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
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

