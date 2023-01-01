class ModelBurdah5 {
  int? id;
  String? arabic;

  ModelBurdah5(
    this.id,
    this.arabic,
  );

  ModelBurdah5.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    arabic = json['arabic'];
  }
}
