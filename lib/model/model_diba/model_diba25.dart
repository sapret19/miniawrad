class ModelDiba25 {
  String? arabic;

  ModelDiba25(this.arabic);

  ModelDiba25.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
