class ModelDiba26 {
  String? arabic;

  ModelDiba26(this.arabic);

  ModelDiba26.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
