class ModelBurdah7 {
  int? id;
  String? arabic;

  ModelBurdah7(this.id, this.arabic,);

  ModelBurdah7.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    arabic = json['arabic'];
  }
}
