class ModelDiba12 {
  String? arabic;

  ModelDiba12(this.arabic);

  ModelDiba12.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
