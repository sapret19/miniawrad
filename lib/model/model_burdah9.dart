class ModelBurdah9 {
  int? id;
  String? arabic;

  ModelBurdah9(this.id, this.arabic,);

  ModelBurdah9.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    arabic = json['arabic'];
  }
}
