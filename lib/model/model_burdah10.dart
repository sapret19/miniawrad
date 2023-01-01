class ModelBurdah10 {
  int? id;
  String? arabic;

  ModelBurdah10(this.id, this.arabic,);

  ModelBurdah10.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    arabic = json['arabic'];
  }
}
