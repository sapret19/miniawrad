class ModelDiba8 {
  String? arabic;

  ModelDiba8(this.arabic);

  ModelDiba8.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
