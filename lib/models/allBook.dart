import 'package:libraloan_mobile_aila/models/allKategori.dart';

class allBook {
  int? id;
  String? judul;
  String? image;
  String? pengarang;
  int? stok;
  String? tahunTerbit;
  String? deskripsi;
  String? createdAt;
  int? kategoriBukusId;
  String? updatedAt;
  int? hargaBuku;
  double? avgRating;
  allKategori? kategoriBukus;

  allBook({
    this.id,
    this.judul,
    this.image,
    this.pengarang,
    this.stok,
    this.tahunTerbit,
    this.deskripsi,
    this.createdAt,
    this.kategoriBukusId,
    this.updatedAt,
    this.hargaBuku,
    this.avgRating,
    this.kategoriBukus,
  });

  factory allBook.fromJson(Map<String, dynamic> json) {
    return allBook(
      id: json['id'],
      judul: json['judul'],
      image: json['image'],
      pengarang: json['pengarang'],
      stok: json['stok'],
      tahunTerbit: json['tahun_terbit'],
      deskripsi: json['deskripsi'],
      createdAt: json['created_at'],
      kategoriBukusId: json['kategori_bukus_id'],
      updatedAt: json['updated_at'],
      hargaBuku: json['harga_buku'],
      avgRating: json['avg_rating']?.toDouble(),
      kategoriBukus: json['kategori_bukus'] != null
          ? allKategori.fromJson(json['kategori_bukus'])
          : null,
    );
  }
}
