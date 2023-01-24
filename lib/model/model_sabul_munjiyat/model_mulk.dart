class ModelMulk {
  String? arabic;

  ModelMulk(this.arabic);

  ModelMulk.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
