class ModelDiba21 {
  String? arabic;

  ModelDiba21(this.arabic);

  ModelDiba21.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
