// To parse this JSON data, do
//
//     final productionResModel = productionResModelFromJson(jsonString);

import 'dart:convert';

ProductionResModel productionResModelFromJson(String str) => ProductionResModel.fromJson(json.decode(str));

String productionResModelToJson(ProductionResModel data) => json.encode(data.toJson());

class ProductionResModel {
  ProductionResModel({
    this.page,
    this.total,
    this.records,
    this.rows,
  });

  int? page;
  int? total;
  String? records;
  List<RowData>? rows;

  factory ProductionResModel.fromJson(Map<String, dynamic> json) => ProductionResModel(
    page: json["page"],
    total: json["total"],
    records: json["records"],
    rows: List<RowData>.from(json["rows"].map((x) => RowData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "page": page,
    "total": total,
    "records": records,
    "rows": List<dynamic>.from(rows!.map((x) => x.toJson())),
  };
}

class RowData {
  RowData({
    this.id,
    this.data,
  });

  String? id;
  List<String>? data;

  factory RowData.fromJson(Map<String, dynamic> json) => RowData(
    id: json["id"],
    data: List<String>.from(json["data"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "data": List<dynamic>.from(data!.map((x) => x)),
  };
}
