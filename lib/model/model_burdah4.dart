class ModelBurdah4 {
  int? id;
  String? arabic;

  ModelBurdah4(this.id, this.arabic,);

  ModelBurdah4.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    arabic = json['arabic'];
  }
}
