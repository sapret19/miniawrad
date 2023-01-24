class ModelDiba16 {
  String? arabic;

  ModelDiba16(this.arabic);

  ModelDiba16.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
