import 'package:flutter/material.dart';

class HelpCenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Center'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Information:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text('Email: help@example.com'),
            Text('Emergency Contact: +1 123 456 7890'),
            SizedBox(height: 16),
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Sed aliquet neque eget ligula auctor, quis iaculis dui tempor. '
                  'In hac habitasse platea dictumst. Sed non mauris sit amet nisi '
                  'mattis consequat nec at risus. Nullam id nunc quam.',
            ),
            SizedBox(height: 16),
            Text(
              'How may I help you?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text('Please feel free to contact us if you have any questions, concerns, or issues.'),
            // Add more help content as needed
          ],
        ),
      ),
    );
  }
}
