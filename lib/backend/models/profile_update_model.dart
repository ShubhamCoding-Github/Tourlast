class EditProfileResponse {
  bool? success;
  Data? data;
  String? message;

  EditProfileResponse({this.success, this.data, this.message});

  EditProfileResponse.fromJson(Map<String, dynamic> json) {
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
  String? name;
  String? mobileNo;
  String? countryCode;
  Null address;
  Null latitude;
  Null longitude;
  String? email;

  Data(
      {this.name,
        this.mobileNo,
        this.countryCode,
        this.address,
        this.latitude,
        this.longitude,
        this.email});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mobileNo = json['mobile_no'];
    countryCode = json['country_code'];
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['mobile_no'] = this.mobileNo;
    data['country_code'] = this.countryCode;
    data['address'] = this.address;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['email'] = this.email;
    return data;
  }
}
