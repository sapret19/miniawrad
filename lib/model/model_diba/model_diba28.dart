class ModelDiba28 {
  String? arabic;

  ModelDiba28(this.arabic);

  ModelDiba28.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
