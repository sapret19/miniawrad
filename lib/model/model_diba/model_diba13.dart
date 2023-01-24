class ModelDiba13 {
  String? arabic;

  ModelDiba13(this.arabic);

  ModelDiba13.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
