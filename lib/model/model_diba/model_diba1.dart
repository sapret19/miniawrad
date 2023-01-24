class ModelDiba1 {
  String? arabic;

  ModelDiba1(this.arabic);

  ModelDiba1.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
