class ModelDoaWaqiah {
  String? arabic;

  ModelDoaWaqiah(this.arabic);

  ModelDoaWaqiah.formJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
