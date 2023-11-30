class FlightSearchModel {
  bool? success;
  Data? data;
  String? message;

  FlightSearchModel({this.success, this.data, this.message});

  FlightSearchModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
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
        ? Pagination.fromJson(json['pagination'])
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
  int? id;
  String? flightNo;
  String? flightName;
  Null image;
  int? companyId;
  String? economyTicketPrice;
  String? premiumEconomyTicketPrice;
  String? businessClassTicketPrice;
  String? firstClassTicketPrice;
  int? economyPassengerNo;
  int? premiumEconomyPassengerNo;
  int? businessClassPassengerNo;
  int? firstClassPassengerNo;
  String? departureLocation;
  String? arrivalLocation;
  String? departureLatitude;
  String? arrivalLatitude;
  String? departureLongitude;
  String? arrivalLongitude;
  String? departureTime;
  String? arrivalTime;
  String? cancellationTime;
  String? flightStatus;
  String? status;

  Items(
      {this.id,
        this.flightNo,
        this.flightName,
        this.image,
        this.companyId,
        this.economyTicketPrice,
        this.premiumEconomyTicketPrice,
        this.businessClassTicketPrice,
        this.firstClassTicketPrice,
        this.economyPassengerNo,
        this.premiumEconomyPassengerNo,
        this.businessClassPassengerNo,
        this.firstClassPassengerNo,
        this.departureLocation,
        this.arrivalLocation,
        this.departureLatitude,
        this.arrivalLatitude,
        this.departureLongitude,
        this.arrivalLongitude,
        this.departureTime,
        this.arrivalTime,
        this.cancellationTime,
        this.flightStatus,
        this.status});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    flightNo = json['flight_no'];
    flightName = json['flight_name'];
    image = json['image'];
    companyId = json['company_id'];
    economyTicketPrice = json['economy_ticket_price'];
    premiumEconomyTicketPrice = json['premium_economy_ticket_price'];
    businessClassTicketPrice = json['business_class_ticket_price'];
    firstClassTicketPrice = json['first_class_ticket_price'];
    economyPassengerNo = json['economy_passenger_no'];
    premiumEconomyPassengerNo = json['premium_economy_passenger_no'];
    businessClassPassengerNo = json['business_class_passenger_no'];
    firstClassPassengerNo = json['first_class_passenger_no'];
    departureLocation = json['departure_location'];
    arrivalLocation = json['arrival_location'];
    departureLatitude = json['departure_latitude'];
    arrivalLatitude = json['arrival_latitude'];
    departureLongitude = json['departure_longitude'];
    arrivalLongitude = json['arrival_longitude'];
    departureTime = json['departure_time'];
    arrivalTime = json['arrival_time'];
    cancellationTime = json['cancellation_time'];
    flightStatus = json['flight_status'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['flight_no'] = this.flightNo;
    data['flight_name'] = this.flightName;
    data['image'] = this.image;
    data['company_id'] = this.companyId;
    data['economy_ticket_price'] = this.economyTicketPrice;
    data['premium_economy_ticket_price'] = this.premiumEconomyTicketPrice;
    data['business_class_ticket_price'] = this.businessClassTicketPrice;
    data['first_class_ticket_price'] = this.firstClassTicketPrice;
    data['economy_passenger_no'] = this.economyPassengerNo;
    data['premium_economy_passenger_no'] = this.premiumEconomyPassengerNo;
    data['business_class_passenger_no'] = this.businessClassPassengerNo;
    data['first_class_passenger_no'] = this.firstClassPassengerNo;
    data['departure_location'] = this.departureLocation;
    data['arrival_location'] = this.arrivalLocation;
    data['departure_latitude'] = this.departureLatitude;
    data['arrival_latitude'] = this.arrivalLatitude;
    data['departure_longitude'] = this.departureLongitude;
    data['arrival_longitude'] = this.arrivalLongitude;
    data['departure_time'] = this.departureTime;
    data['arrival_time'] = this.arrivalTime;
    data['cancellation_time'] = this.cancellationTime;
    data['flight_status'] = this.flightStatus;
    data['status'] = this.status;
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
