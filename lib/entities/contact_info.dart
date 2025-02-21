import 'package:flutter/material.dart';

@immutable
class ContactInfo {
  final String email;
  final String phone;
  final String address;
  const ContactInfo({
    required this.email,
    required this.phone,
    required this.address,
  });
}
