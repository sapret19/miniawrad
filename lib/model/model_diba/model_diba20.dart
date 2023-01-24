class ModelDiba20 {
  String? arabic;

  ModelDiba20(this.arabic);

  ModelDiba20.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
