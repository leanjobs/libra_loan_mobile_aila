class allKategori {
  int? id;
  String? namaKategori;
  String? createdAt;
  String? updatedAt;
  String? imageKategori;

  allKategori({
    this.id,
    this.namaKategori,
    this.createdAt,
    this.updatedAt,
    this.imageKategori,
  });

  factory allKategori.fromJson(Map<String, dynamic> json) {
    return allKategori(
      id: json['id'],
      namaKategori: json['nama_kategori'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      imageKategori: json['image_kategori'],
    );
  }
}