class PortofolioPosts {
  String title;
  String description;
  String url;
  PortofolioPosts({
    required this.title,
    required this.description,
    required this.url,
  });
}

Future getMyPortofolio() async {
  var results = myPortofolio;
  return results;
}

List<PortofolioPosts> myPortofolio = [
  PortofolioPosts(
    description:
        'Create Flutter app using Github API. for the details, i used BLoC for save every state (Repository, User, and Issue) search whilst the search result is be cached. this GithubSearch app using dart 2.12 ver (i tried to migrate to null safety), using BLoC observer for monitoring the log state/event',
    title: 'GithubSearch App',
    url: 'https://github.com/FatihSeida/flutter_github',
  ),
  PortofolioPosts(
    title: 'Komisains App',
    description:
        'Create Komisains App. the reason why i built this app because i wanna contribute something to my organization (HMI), because of that i try to do my best using my observation to know the requirement of this app so i built this app in 15days and tried to use Provider state management. The details, it just fetch some data from API like news, training information, agenda, e-books, and many more.',
    url: 'https://github.com/FatihSeida/komisains_app'
  ),
  PortofolioPosts(
    title: 'Instagram Neumorphism UI (Redesign UI Instagram)',
    description: 'My 80% project, i can\'t continue this project because i need to upgrade my firebase first to using the cloud Functions. i created this app for practice my BLoC State Management Skills and UI Design Skills',
    url: 'https://github.com/FatihSeida/instagram_redesign_ui_neumorphism'
  ),
];
