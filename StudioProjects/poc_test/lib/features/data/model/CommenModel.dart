import 'dart:convert';

CommenModel addConversationMemberModelFromJson(String str) => CommenModel.fromJson(json.decode(str));

String addConversationMemberModelToJson(CommenModel data) => json.encode(data.toJson());

class CommenModel {
  CommenModel({
    this.message,
    this.isSuccee,
    this.returnId,
      this.data,
    this.typesOfData,
    this.results,
  });

  dynamic message;
  bool isSuccee;
  int returnId;
  List<dynamic> data;
  dynamic typesOfData;
  List<dynamic> results;

  factory CommenModel.fromJson(Map<String, dynamic> json) => CommenModel(
    message: json["Message"],
    isSuccee: json["IsSuccee"],
    returnId: json["ReturnId"],
     data: List<dynamic>.from(json["Data"].map((x) => x)),
    typesOfData: json["TypesOfData"],
    results: List<dynamic>.from(json["Results"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "Message": message,
    "IsSuccee": isSuccee,
    "ReturnId": returnId,
     "Data": List<dynamic>.from(data.map((x) => x.toJson())),
    "TypesOfData": typesOfData,
    "Results": List<dynamic>.from(results.map((x) => x)),
  };
}
