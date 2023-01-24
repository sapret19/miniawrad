class ModelDiba18 {
  String? arabic;

  ModelDiba18(this.arabic);

  ModelDiba18.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
