class Data {
  NouzWe0NJX66aU8mExf? nouzWe0NJX66aU8mExf;

  Data({this.nouzWe0NJX66aU8mExf});

  Data.fromJson(Map<String, dynamic> json) {
    nouzWe0NJX66aU8mExf = json['-NouzWe0NJX66aU8mExf'] != null
        ? NouzWe0NJX66aU8mExf?.fromJson(json['-NouzWe0NJX66aU8mExf'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (nouzWe0NJX66aU8mExf != null) {
      data['-NouzWe0NJX66aU8mExf'] = nouzWe0NJX66aU8mExf?.toJson();
    }
    return data;
  }
}

class NouzWe0NJX66aU8mExf {
  String? angkatan;
  String? ipk;
  String? nama;
  String? nim;
  String? prodi;

  NouzWe0NJX66aU8mExf(
      {this.angkatan, this.ipk, this.nama, this.nim, this.prodi});

  NouzWe0NJX66aU8mExf.fromJson(Map<String, dynamic> json) {
    angkatan = json['angkatan'];
    ipk = json['ipk'];
    nama = json['nama'];
    nim = json['nim'];
    prodi = json['prodi'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['angkatan'] = angkatan;
    data['ipk'] = ipk;
    data['nama'] = nama;
    data['nim'] = nim;
    data['prodi'] = prodi;
    return data;
  }
}
