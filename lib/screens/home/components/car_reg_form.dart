import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../../providers/notification_provider.dart';

class CarRegistration {
  String cnic = '';
  String carNumber = '';
  String carModel = '';
  String carCC = '';
  String ownerName = '';
}

class CarRegistrationForm extends StatefulWidget {
  @override
  _CarRegistrationFormState createState() => _CarRegistrationFormState();
}

class _CarRegistrationFormState extends State<CarRegistrationForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  CarRegistration _registration = CarRegistration();

  void _registerCar() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Navigate to the success screen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RegistrationSuccessScreen(),
        ),
      );
    }
    var notification = {
      'title': _registration.carNumber,
      'description': _registration.carModel,
    };
    // Access the NotificationProvider and add the notification.
    var notificationProvider = Provider.of<NotificationProvider>(context, listen: false);
    notificationProvider.addNotification(notification);

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registration Done')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Registration Form'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Stack(
        children: [
        Opacity(
         opacity: 0.3,
         child:Image.asset(
        'assets/images/form-bg.jpg', // Replace with your image path
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
        ),
       ),SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'CNIC'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter CNIC';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _registration.cnic = value!;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Car Number'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter car number';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _registration.carNumber = value!;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Car Model'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter car model';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _registration.carModel = value!;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Car CC'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter car CC';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _registration.carCC = value!;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Owner's Name"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter owner's name";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _registration.ownerName = value!;
                    },
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _registerCar,
                  child: Text('Register Now'),
                ),
              ],
            ),
          ),
        ),
      ),
      ],
      ),
    );
  }
}

class RegistrationSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Success!"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Adjust padding as needed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/animations/order_success_animation.json',
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                "Congratulations! Your registration was successful.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/home',
                        (route) => false,
                  );
                },
                child: Text(
                  "Continue to the app",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue, // Customize the color as needed.
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


