class ModelDiba11 {
  String? arabic;

  ModelDiba11(this.arabic);

  ModelDiba11.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
