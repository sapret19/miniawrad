class ModelDiba10 {
  String? arabic;

  ModelDiba10(this.arabic);

  ModelDiba10.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
