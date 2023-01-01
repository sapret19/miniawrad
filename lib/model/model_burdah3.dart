class ModelBurdah3 {
  int? id;
  String? arabic;

  ModelBurdah3(this.id, this.arabic,);

  ModelBurdah3.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    arabic = json['arabic'];
  }
}
