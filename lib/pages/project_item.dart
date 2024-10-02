class ProjectItem {
  final String title;
  final String description;
  final String image;
  final List<String> technologies;
  final String link;

  ProjectItem(
      {required this.title,
      required this.description,
      required this.image,
      required this.technologies,
      required this.link});
}

final kProjectItems = [
  ProjectItem(
    title: 'Zheer Barzan',
    description: 'A Flutter project for me and my friends.',
    image: 'assets/zheer1.png',
    technologies: ['Flutter', 'Dart', 'Firebase'],
    link: 'https://github.com/zheerbarzan/zheer_barzan',
  )
];
