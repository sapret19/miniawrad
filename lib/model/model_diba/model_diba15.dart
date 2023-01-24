class ModelDiba15 {
  String? arabic;

  ModelDiba15(this.arabic);

  ModelDiba15.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
