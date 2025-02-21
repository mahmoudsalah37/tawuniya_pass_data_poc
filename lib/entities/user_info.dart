import 'package:flutter/material.dart';

@immutable
class UserInfo {
  final String firstName;
  final String secondName;
  const UserInfo({required this.firstName, required this.secondName});
}
