class ModelDiba23 {
  String? arabic;

  ModelDiba23(this.arabic);

  ModelDiba23.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
