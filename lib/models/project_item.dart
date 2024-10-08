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
    description: 'A chess game ',
    image: 'assets/img/projects/chess.gif',
    technologies: ['Flutter', 'Dart'],
    link: 'https://github.com/ZheerBarzan/project_kasparov',
  ),
  ProjectItem(
    title: 'Project_Jordan',
    description: 'A NBA News Application',
    image: 'assets/img/projects/jordan.gif',
    technologies: ['Flutter', 'Dart', 'Firebase'],
    link: 'https://github.com/ZheerBarzan/project_jordan',
  ),
  ProjectItem(
    title: 'Project_MineSweeper',
    description: 'A MineSweeper game ',
    image: 'assets/img/projects/mineswepper.gif',
    technologies: ['Flutter', 'Dart'],
    link: 'https://github.com/ZheerBarzan/minesweeper-game-in-flutter',
  ),
  ProjectItem(
    title: 'Project_Forecast',
    description: 'A realtime Weather application ',
    image: 'assets/img/projects/weather.gif',
    technologies: ['Flutter', 'Dart'],
    link: 'https://github.com/ZheerBarzan/project_forecast',
  )
];
