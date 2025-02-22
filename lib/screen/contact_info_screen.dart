import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../args/contact_info.dart';
import '../args/sign_up_data.dart';

class ContactInfoScreen extends StatefulWidget {
  final SignUpData signUpData;
  const ContactInfoScreen({super.key, required this.signUpData});

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  late final GlobalKey<FormState> _formKey;
  String _email = "";
  String _phone = "";
  String _address = "";
  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Enter Your Email",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) => value!.isEmpty ? "Required" : null,
                onSaved: (value) => _email = value!,
              ),
              SizedBox(height: 10),
              Text(
                "Enter Your phone",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your Phone",
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) => value!.isEmpty ? "Required" : null,
                onSaved: (value) => _phone = value!,
              ),
              SizedBox(height: 10),
              Text(
                "Enter Your Address",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your Address",
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) => value!.isEmpty ? "Required" : null,
                onSaved: (value) => _address = value!,
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    final data = widget.signUpData.copyWith(
                      contactInfo: ContactInfo(
                        email: _email,
                        phone: _phone,
                        address: _address,
                      ),
                    );
                    context.push(
                      '/summary',
                      extra: data,
                    );
                  }
                },
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();

    super.dispose();
  }
}
