class ModelBurdah2 {
  int? id;
  String? arabic;

  ModelBurdah2(this.id, this.arabic,);

  ModelBurdah2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    arabic = json['arabic'];
  }
}
