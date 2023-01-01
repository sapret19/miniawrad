class ModelBurdah1 {
  int? id;
  String? arabic;
  String? arabic2;

  ModelBurdah1(this.id, this.arabic, this.arabic2);

  ModelBurdah1.fromJson(Map<String, dynamic> json) {
    // id = json['id'];
    arabic = json['arabic'];
    arabic2 = json['arabic2'];
  }
}
