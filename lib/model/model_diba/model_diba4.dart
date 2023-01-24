class ModelDiba4 {
  String? arabic;

  ModelDiba4(this.arabic);

  ModelDiba4.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
