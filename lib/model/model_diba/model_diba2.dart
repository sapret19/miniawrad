class ModelDiba2 {
  String? arabic;

  ModelDiba2(this.arabic);

  ModelDiba2.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
