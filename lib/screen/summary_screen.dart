import 'package:flutter/material.dart';

import '../args/sign_up_data.dart';

class SummaryScreen extends StatelessWidget {
  final SignUpData signUpData;

  const SummaryScreen({super.key, required this.signUpData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Summary",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "first name: ${signUpData.userInfo.firstName}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "second name: ${signUpData.userInfo.secondName}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Email: ${signUpData.contactInfo.email}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "phone: ${signUpData.contactInfo.phone}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "address: ${signUpData.contactInfo.address}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                final model = signUpData.toModel;
                //TODO: pass model to endpoint
              },
              child: Text(
                "Submit",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
