class ModelIstighosah {
  int? id;
  String? name;
  String? arabic;

  ModelIstighosah(this.id, this.arabic);

  ModelIstighosah.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    // name = json['name'];
    arabic = json['arabic'];
  }
}

// class ModelJudul {
//   String? judul;

//   ModelJudul(this.judul);

//   ModelJudul.fromJson(Map<String, dynamic> json) {
//     judul = json['judul'];
//   }
// }
