class UserModel {
  String? sId;
  String? email;
  String? name;
  String? phone;
  bool? emailVerified;
  bool? phoneVerified;
  String? location;
  String? type;
  String? provider;
  String? signUpAt;
  String? lastLoginAt;

  UserModel(
      {this.sId,
      this.email,
      this.name,
      this.phone,
      this.emailVerified,
      this.phoneVerified,
      this.location,
      this.type,
      this.provider,
      this.signUpAt,
      this.lastLoginAt});

  UserModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    email = json['email'];
    name = json['name'];
    phone = json['phone'];
    emailVerified = json['emailVerified'];
    phoneVerified = json['phoneVerified'];
    location = json['location'];
    type = json['type'];
    provider = json['provider'];
    signUpAt = json['signUpAt'];
    lastLoginAt = json['lastLoginAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = sId;
    data['email'] = email;
    data['name'] = name;
    data['phone'] = phone;
    data['emailVerified'] = emailVerified;
    data['phoneVerified'] = phoneVerified;
    data['location'] = location;
    data['type'] = type;
    data['provider'] = provider;
    data['signUpAt'] = signUpAt;
    data['lastLoginAt'] = lastLoginAt;
    return data;
  }
}
