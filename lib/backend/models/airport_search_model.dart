class AirportSearchModel {
  bool? success;
  Data? data;
  String? message;

  AirportSearchModel({this.success, this.data, this.message});

  AirportSearchModel.fromJson(Map<String, dynamic> json) {
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
  List<Items>? items;
  String? imagePath;
  Pagination? pagination;

  Data({this.items, this.imagePath, this.pagination});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    imagePath = json['image_path'];
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['image_path'] = this.imagePath;
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    return data;
  }
}

class Items {
  String? departureLocation;
  String? arrivalLocation;
  String? departureLatitude;
  String? arrivalLatitude;
  String? departureLongitude;
  String? arrivalLongitude;

  Items(
      {this.departureLocation,
        this.arrivalLocation,
        this.departureLatitude,
        this.arrivalLatitude,
        this.departureLongitude,
        this.arrivalLongitude});

  Items.fromJson(Map<String, dynamic> json) {
    departureLocation = json['departure_location'];
    arrivalLocation = json['arrival_location'];
    departureLatitude = json['departure_latitude'];
    arrivalLatitude = json['arrival_latitude'];
    departureLongitude = json['departure_longitude'];
    arrivalLongitude = json['arrival_longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['departure_location'] = this.departureLocation;
    data['arrival_location'] = this.arrivalLocation;
    data['departure_latitude'] = this.departureLatitude;
    data['arrival_latitude'] = this.arrivalLatitude;
    data['departure_longitude'] = this.departureLongitude;
    data['arrival_longitude'] = this.arrivalLongitude;
    return data;
  }
}

class Pagination {
  int? total;
  int? perPage;
  int? start;

  Pagination({this.total, this.perPage, this.start});

  Pagination.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    perPage = json['per_page'];
    start = json['start'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['per_page'] = this.perPage;
    data['start'] = this.start;
    return data;
  }
}
