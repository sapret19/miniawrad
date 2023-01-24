class ModelDiba9 {
  String? arabic;

  ModelDiba9(this.arabic);

  ModelDiba9.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
