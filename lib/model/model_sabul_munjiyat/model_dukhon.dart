class ModelDukhon {
  String? arabic;

  ModelDukhon(this.arabic);

  ModelDukhon.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
