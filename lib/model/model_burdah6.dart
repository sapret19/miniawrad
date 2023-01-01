class ModelBurdah6 {
  int? id;
  String? arabic;

  ModelBurdah6(this.id, this.arabic,);

  ModelBurdah6.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    arabic = json['arabic'];
  }
}
