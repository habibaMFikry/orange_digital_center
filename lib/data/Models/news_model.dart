import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  NewsModel({
    String? code,
    String? message,
    List<Data>? data,
  }) {
    _code = code;
    _message = message;
    _data = data;
  }

  NewsModel.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }

  String? _code;
  String? _message;
  List<Data>? _data;

  String? get code => _code;

  String? get message => _message;

  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    num? id,
    String? date,
    String? body,
    String? imageUrl,
    String? linkUrl,
    String? title,
  }) {
    _id = id;
    _date = date;
    _body = body;
    _imageUrl = imageUrl;
    _linkUrl = linkUrl;
    _title = title;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _date = json['date'];
    _body = json['body'];
    _imageUrl = json['imageUrl'];
    _linkUrl = json['linkUrl'];
    _title = json['title'];
  }

  num? _id;
  String? _date;
  String? _body;
  String? _imageUrl;
  String? _linkUrl;
  String? _title;

  num? get id => _id;

  String? get date => _date;

  String? get body => _body;

  String? get imageUrl => _imageUrl;

  String? get linkUrl => _linkUrl;

  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['date'] = _date;
    map['body'] = _body;
    map['imageUrl'] = _imageUrl;
    map['linkUrl'] = _linkUrl;
    map['title'] = _title;
    return map;
  }
}
