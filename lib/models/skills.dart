enum MasteryParameter { advance, intermediate, basic }

class SkillItem {
  String title;
  int masteryParameter;
  String? experience;
  String image;

  SkillItem({
    required this.title,
    required this.masteryParameter,
    this.experience,
    required this.image,
  });
}

List<SkillItem> mySkills = [
  SkillItem(
      title: 'UI/UX, Figma',
      masteryParameter: 2,
      experience: 'Finish some course and create some UI Design',
      image: 'assets/images/figma.png'),
  SkillItem(
      title: 'CorelDraw',
      masteryParameter: 3,
      experience: 'Have 8 years experience on Graphic Design.',
      image: 'assets/images/coreldraw.png'),
  SkillItem(
      title: 'Flutter(Dart)',
      masteryParameter: 3,
      experience:
          'Experience on BLoC, Provider, and little bit RxDart state management.',
      image: 'assets/images/flutter.png'),
  SkillItem(
    title: 'Photoshop',
    masteryParameter: 2,
    experience: 'Tools for help editing photo for CorelDraw graphic design',
    image: 'assets/images/photoshop.png'
  ),
];
