class ModelBurdah8 {
  int? id;
  String? arabic;

  ModelBurdah8(this.id, this.arabic,);

  ModelBurdah8.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    arabic = json['arabic'];
  }
}
