import 'package:flutter/material.dart';

class HelpCenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Center', style: TextStyle(color: Colors.black)),
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            'assets/images/notification_header_image.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/helpcenter.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact Information:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text('Email: info@mechanicsmangao.pk', style: TextStyle(color: Colors.white)),
              Text('Emergency Contact: +92 317 8906226', style: TextStyle(color: Colors.white)),
              SizedBox(height: 16),
              Text(
                'Description:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'If you are looking for a trustworthy, reliable company for your automobile repair needs, look no further.\n'
                    'Service Hours\n'
                    'Monday:  '
                    '9:00am - 7:00pm\n'
                    'Tuesday:  '
                    '9:00am - 7:00pm\n'
                    'Wednesday:  '
                    '9:00am - 7:00pm\n'
                    'Thursday:  '
                    '9:00am - 7:00pm\n'
                    'Friday:  '
                    'OFF\n'
                    'Saturday:  '
                    '9:00am - 7:00pm\n'
                    'Sunday:  '
                    '9:00am - 7:00pm\n',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 16),
              Text(
                'How may I help you?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Please feel free to contact us if you have any questions, concerns, or issues.',
                style: TextStyle(color: Colors.white),
              ),
              // Add more help content as needed
            ],
          ),
        ),
      ),
    );
  }
}
