import 'package:flutter/material.dart';
import 'engine_tuning_details.dart';
import 'engine_service_details.dart';
import 'catalytic_converter_details.dart';
import 'interor_cleaning_details.dart';

class PackagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Packages'),
      ),
      body: ListView(
        children: [
          PackageCard(
            title: 'Engine Service',
            imagePath: 'assets/images/banner1.jpg',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EngineServiceDetails(),
                ),
              );
            },
          ),
          PackageCard(
            title: 'Engine Tuning',
            imagePath: 'assets/images/banner2.jpg',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EngineTuningDetails(),
                ),
              );
            },
          ),
          PackageCard(
            title: 'Catalytic Converter Cleaning',
            imagePath: 'assets/images/banner3.jpg',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CatalyticConverterDetails(),
                ),
              );
            },
          ),
          PackageCard(
            title: 'Interior Cleaning',
            imagePath: 'assets/images/banner4.jpg',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InteriorCleaningDetails(),
                ),
              );
            },
          )
          // Add more PackageCard widgets for other packages
        ],
      ),
    );
  }
}

class PackageCard extends StatelessWidget {
  const PackageCard({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.press,
  }) : super(key: key);

  final String title;
  final String imagePath;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            // Add a beautiful and eye-catching background theme
            // Customize the card's UI as per your design requirements
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
