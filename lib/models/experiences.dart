import 'dart:convert';

class Experiences {
  List<ExperienceItem> item;

  Experiences({
    required this.item,
  });

  Map<String, dynamic> toMap() {
    return {
      'item': item.map((x) => x.toMap()).toList(),
    };
  }

  factory Experiences.fromMap(Map<String, dynamic> map) {
    return Experiences(
      item: List<ExperienceItem>.from(
          map['item']?.map((x) => ExperienceItem.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Experiences.fromJson(String source) =>
      Experiences.fromMap(json.decode(source));
}

class ExperienceItem {
  String job;
  String organizationName;
  DateTime year;

  ExperienceItem({
    required this.job,
    required this.organizationName,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    return {
      'job': job,
      'organizationName': organizationName,
      'year': year.millisecondsSinceEpoch,
    };
  }

  factory ExperienceItem.fromMap(Map<String, dynamic> map) {
    return ExperienceItem(
      job: map['job'],
      organizationName: map['organizationName'],
      year: DateTime.fromMillisecondsSinceEpoch(map['year']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ExperienceItem.fromJson(String source) =>
      ExperienceItem.fromMap(json.decode(source));
}

List<ExperienceItem> myExperience = [
  ExperienceItem(job: 'Mobile Developer Komisariat App', organizationName: 'HMI Komisariat Sains & Teknologi Cabang Kabupaten Bandung', year: DateTime(2021)),
];
