class LoginResponse {
  bool? success;
  Data? data;
  String? message;

  LoginResponse({this.success, this.data, this.message});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int? id;
  String? token;
  String? name;
  String? email;
  String? mobileNo;
  Null loginType;
  String? countryCode;
  String? profileImage;
  Null dob;

  Data(
      {this.id,
        this.token,
        this.name,
        this.email,
        this.mobileNo,
        this.loginType,
        this.countryCode,
        this.profileImage,
        this.dob});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    token = json['token'];
    name = json['name'];
    email = json['email'];
    mobileNo = json['mobile_no'];
    loginType = json['login_type'];
    countryCode = json['country_code'];
    profileImage = json['profile_image'];
    dob = json['dob'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['token'] = this.token;
    data['name'] = this.name;
    data['email'] = this.email;
    data['mobile_no'] = this.mobileNo;
    data['login_type'] = this.loginType;
    data['country_code'] = this.countryCode;
    data['profile_image'] = this.profileImage;
    data['dob'] = this.dob;
    return data;
  }
}
