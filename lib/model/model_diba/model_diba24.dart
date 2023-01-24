class ModelDiba24 {
  String? arabic;

  ModelDiba24(this.arabic);

  ModelDiba24.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
