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
    title: 'Project_Kasparov',
    description: 'A chess game made in Flutter',
    image: 'assets/img/chess.gif',
    technologies: ['Flutter', 'Dart'],
    link: 'https://github.com/zheerbarzan/zheer_barzan',
  ),
  ProjectItem(
    title: 'Project_Jordan',
    description: 'A NBA News Application',
    image: 'assets/img/jordan.gif',
    technologies: ['Flutter', 'Dart', 'Firebase'],
    link: 'https://github.com/zheerbarzan/zheer_barzan',
  ),
  ProjectItem(
    title: 'Project_MineSweeper',
    description: 'A MineSweeper game made in Flutter',
    image: 'assets/img/mineswepper.gif',
    technologies: ['Flutter', 'Dart'],
    link: 'https://github.com/zheerbarzan/zheer_barzan',
  ),
  ProjectItem(
    title: 'Project_Forecast',
    description: 'A realtime Weather application made in Flutter',
    image: 'assets/img/weather.gif',
    technologies: ['Flutter', 'Dart'],
    link: 'https://github.com/zheerbarzan/zheer_barzan',
  )
];
