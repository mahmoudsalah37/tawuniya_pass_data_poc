import '../models/sign_up_model.dart';
import 'contact_info.dart';
import 'user_info.dart';

class SignUpData {
  late final UserInfo userInfo;
  late final ContactInfo contactInfo;
  SignUpData({UserInfo? userInfo, ContactInfo? contactInfo}) {
    if (userInfo != null) {
      this.userInfo = userInfo;
    }
    if (contactInfo != null) {
      this.contactInfo = contactInfo;
    }
  }
  SignUpData copyWith({UserInfo? userInfo, ContactInfo? contactInfo}) =>
      SignUpData(
        userInfo: userInfo ?? this.userInfo,
        contactInfo: contactInfo ?? this.contactInfo,
      );

  SignUpModel get toModel => SignUpModel(
        name: userInfo.firstName,
        email: contactInfo.email,
      );
}
