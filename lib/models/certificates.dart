import 'dart:convert';

class Certificates {
  List<CertificateItem> item;

  Certificates({
    required this.item,
  });

  Map<String, dynamic> toMap() {
    return {
      'item': item.map((x) => x.toMap()).toList(),
    };
  }

  factory Certificates.fromMap(Map<String, dynamic> map) {
    return Certificates(
      item: List<CertificateItem>.from(
          map['item']?.map((x) => CertificateItem.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Certificates.fromJson(String source) =>
      Certificates.fromMap(json.decode(source));
}

class CertificateItem {
  String title;
  String by;
  DateTime year;
  String? url;

  CertificateItem({
    required this.title,
    required this.by,
    required this.year,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'by': by,
      'year': year.millisecondsSinceEpoch,
    };
  }

  factory CertificateItem.fromMap(Map<String, dynamic> map) {
    return CertificateItem(
      title: map['title'],
      by: map['by'],
      year: DateTime.fromMillisecondsSinceEpoch(map['year']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CertificateItem.fromJson(String source) =>
      CertificateItem.fromMap(json.decode(source));
}

List<CertificateItem> myCertificate = [
  CertificateItem(
      title: 'Belajar Membuat Aplikasi Flutter untuk Pemula',
      by: 'Dicoding',
      year: DateTime(2021, 5),
      url: 'https://www.dicoding.com/certificates/L4PQMK8M2ZO1'),
  CertificateItem(
      title: 'Belajar Prinsip Pemograman SOLID',
      by: 'Dicoding',
      year: DateTime(2021, 5),
      url: 'https://www.dicoding.com/certificates/QLZ98YRO7X5D'),
  CertificateItem(
      title: 'Memulai Pemograman dengan Dart',
      by: 'Dicoding',
      year: DateTime(2021, 5),
      url: 'https://www.dicoding.com/certificates/N9ZODRGV0PG5'),
  CertificateItem(
      title: 'Web Design, from Figma to Webflow to Freelancing',
      by: 'Vako Shvili',
      year: DateTime(2021),
      url:
          'https://www.udemy.com/certificate/UC-6c283afb-25bc-4506-83d2-f9540493e4ec/'),
  CertificateItem(
      title: 'Flutter & Dart - The Complete Guide (2021 Edition)',
      by: 'Academind - Maximilian Schwarzmuller',
      year: DateTime(2021),
      url:
          'https://www.udemy.com/certificate/UC-9f9b51c8-5bce-4075-91df-cfa670e3a1f4/'),
  CertificateItem(
      title: 'Flutter Firebase BLoC Instagram Clone | iOS and Android 2021',
      by: 'MarcusNg',
      year: DateTime(2021),
      url:
          'https://www.udemy.com/certificate/UC-adff9ce0-d531-4c10-8095-a1342e935e20/')
];
