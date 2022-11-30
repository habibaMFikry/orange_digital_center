class RegisterModel{
  String? code;
  String? message;
  List<UserData> userDataList = [];
  RegisterModel.fromJson(Map<String,dynamic> json){
    code = json['code'];
    message = json['message'];
    json['data'].forEach((element){
       UserData item =  UserData.fromJson(json: element);
       userDataList.add(item);
    });
  }


}

class UserData{
  String? name;
  String? email;
  String? password;
  String? gender;
  String? phoneNumber;
  UserData.fromJson({required Map<String, dynamic> json}){
    name = json['name'];
    email = json['email'];
    password = json['password'];
    gender = json['gender'];
    phoneNumber = json['phoneNumber'];
  }

}