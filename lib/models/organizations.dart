import 'dart:convert';

class Organizations {
  List<OrganizationItem> item;
  Organizations({
    required this.item,
  });

  Map<String, dynamic> toMap() {
    return {
      'item': item.map((x) => x.toMap()).toList(),
    };
  }

  factory Organizations.fromMap(Map<String, dynamic> map) {
    return Organizations(
      item: List<OrganizationItem>.from(
          map['item']?.map((x) => OrganizationItem.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Organizations.fromJson(String source) =>
      Organizations.fromMap(json.decode(source));
}

class OrganizationItem {
  String position;
  String organizationName;
  DateTime year;

  OrganizationItem({
    required this.position,
    required this.organizationName,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    return {
      'position': position,
      'organizationName': organizationName,
      'year': year.millisecondsSinceEpoch,
    };
  }

  factory OrganizationItem.fromMap(Map<String, dynamic> map) {
    return OrganizationItem(
      position: map['position'],
      organizationName: map['organizationName'],
      year: DateTime.fromMillisecondsSinceEpoch(map['year']),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrganizationItem.fromJson(String source) =>
      OrganizationItem.fromMap(json.decode(source));
}

List<OrganizationItem> myOrganization = [
  OrganizationItem(
    position: 'General Chairman',
    organizationName: 'HMI Komisariat Saintek Cabang Kabupaten Bandung',
    year: DateTime(2019),
  ),
  OrganizationItem(
    position: 'Head of P3A Division',
    organizationName: 'HMI Komisariat Saintek Cabang Kabupaten Bandung',
    year: DateTime(2018),
  ),
  OrganizationItem(
    position: 'Secretary of Medkominfo',
    organizationName: 'HAMADA Bandung',
    year: DateTime(2017),
  ),
  OrganizationItem(
    position: 'Head of PAO Division',
    organizationName: 'Lingkar Studi Sains & Teknologi FST UIN Bandung',
    year: DateTime(2016),
  ),
  OrganizationItem(
    position: 'Part of PAO Division',
    organizationName: 'HIMATIF UIN Bandung',
    year: DateTime(2017),
  ),
  OrganizationItem(
    position: 'Part of Minat & Bakat Division',
    organizationName: 'HIMATIF UIN Bandung',
    year: DateTime(2016),
  )
];
