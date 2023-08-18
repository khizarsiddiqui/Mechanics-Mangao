import 'package:flutter/material.dart';
import 'package:mechanics_mangao/screens/cart/cart_screen.dart';
import 'package:mechanics_mangao/providers/notification_screen.dart';

class MyAccountPage extends StatefulWidget {
  @override
  _MyAccountPageState createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  String name = 'Khizar Hussain';
  String email = 'khizarsiddiqui10@gmail.com';
  String phone = '+92 317 8906226';
  String password = '********';

  void updateName(String newName) {
    setState(() {
      name = newName;
    });
  }

  void updateEmail(String newEmail) {
    setState(() {
      email = newEmail;
    });
  }

  void updatePhone(String newPhone) {
    setState(() {
      phone = newPhone;
    });
  }

  void updatePassword(String newPassword) {
    setState(() {
      password = newPassword;
    });
  }

  Future<Future<String?>> showUpdateDialog(BuildContext context, String field, String initialValue) async {
    TextEditingController textController = TextEditingController(text: initialValue);

    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Update $field'),
          content: TextFormField(
            controller: textController,
            decoration: InputDecoration(
              labelText: 'New $field',
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop('');
              },
            ),
            TextButton(
              child: Text('Update'),
              onPressed: () {
                Navigator.of(context).pop(textController.text);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Account',
          style: TextStyle(color: Colors.black),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/notification_header_image.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/myacc.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Adjust the radius value as needed
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              'User Account Details',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 16),
                            AccountDetailItem(label: 'Name', value: name),
                            AccountDetailItem(label: 'Email', value: email),
                            AccountDetailItem(label: 'Phone', value: phone),
                            AccountDetailItem(label: 'Password', value: password),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    AccountActionButton(
                      label: 'My Orders',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CartScreen()),
                        );
                      },
                    ),
                    AccountActionButton(
                      label: 'Packages Booked',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NotificationScreen()),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    UpdateButton(
                      label: 'Update Name',
                      onPressed: () async {
                        String newName = (await showUpdateDialog(context, 'Name', name)) as String;
                        if (newName.isNotEmpty) {
                          updateName(newName);
                        }
                      },
                    ),
                    UpdateButton(
                      label: 'Update Email',
                      onPressed: () async {
                        String newEmail = (await showUpdateDialog(context, 'Email', email)) as String;
                        if (newEmail.isNotEmpty) {
                          updateEmail(newEmail);
                        }
                      },
                    ),
                    UpdateButton(
                      label: 'Update Phone',
                      onPressed: () async {
                        String newPhone = (await showUpdateDialog(context, 'Phone', phone)) as String;
                        if (newPhone.isNotEmpty) {
                          updatePhone(newPhone);
                        }
                      },
                    ),
                    UpdateButton(
                      label: 'Update Password',
                      onPressed: () async {
                        String newPassword = (await showUpdateDialog(context, 'Password', '')) as String;
                        if (newPassword.isNotEmpty) {
                          updatePassword(newPassword);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class AccountDetailItem extends StatelessWidget {
  final String label;
  final String value;

  AccountDetailItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class AccountActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  AccountActionButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}

class UpdateButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  UpdateButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}
