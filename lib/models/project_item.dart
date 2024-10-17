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
  // project_music
  ProjectItem(
      title: "project_music",
      description: "Music Player with neumorphic UI Design",
      image: "assets/img/projects/music.gif",
      technologies: ['Flutter', 'Dart'],
      link: 'https://github.com/ZheerBarzan/project_music'),

  // project_expense_tracker
  ProjectItem(
      title: "project_expense_tracker",
      description: "Expense Tracker",
      image: "assets/img/projects/expense.gif",
      technologies: ['Flutter', 'Dart', 'ISAR Database'],
      link: 'https://github.com/ZheerBarzan/project_expense_tracker'),

  // project_tasks
  ProjectItem(
      title: "project_tasks",
      description: "Task Manager",
      image: "assets/img/projects/task.gif",
      technologies: ['Flutter', 'Dart', 'ISAR Database'],
      link: 'https://github.com/ZheerBarzan/project_tasks'),

  // project_hermes
  ProjectItem(
    title: "Project_Hermes",
    description: "A News application using Fleunt UI Design ",
    image: "assets/img/projects/news.gif",
    technologies: ['Flutter', 'Dart', 'News API'],
    link: 'https://github.com/ZheerBarzan/project_hermes',
  ),

  // project_habit
  ProjectItem(
    title: "project_habit",
    description: "Habit Tracker",
    image: "assets/img/projects/habit.gif",
    technologies: ['Flutter', 'Dart', 'ISAR Database'],
    link: 'https://github.com/ZheerBarzan/project_habit',
  ),

  // project_zeta
  ProjectItem(
      title: "project_Zeta",
      description: "Socail Media App for developers",
      image: "assets/img/projects/zeta.gif",
      technologies: ['Flutter', 'Dart', 'Firebase'],
      link: 'https://github.com/ZheerBarzan/project_zeta'),

  // project_whisper
  ProjectItem(
      title: "project_whisper",
      description: "a chat appliaton",
      image: "assets/img/projects/w.gif",
      technologies: ['Flutter', 'Dart', 'Firebase'],
      link: 'https://github.com/ZheerBarzan/project_whisper'),

  // project_samurai
  ProjectItem(
    title: 'project_samurai',
    description: 'A Samurai Game',
    image: 'assets/img/projects/samurai.gif',
    technologies: ['python', 'pygame'],
    link: 'https://github.com/ZheerBarzan/project_samurai',
  ),

  // project_jordan
  ProjectItem(
    title: 'Project_Jordan',
    description: 'A NBA News Application',
    image: 'assets/img/projects/jordan.gif',
    technologies: ['Flutter', 'Dart', 'Firebase'],
    link: 'https://github.com/ZheerBarzan/project_jordan',
  ),

  // project_forecast
  ProjectItem(
    title: 'Project_Forecast',
    description: 'A realtime Weather application ',
    image: 'assets/img/projects/weather.gif',
    technologies: ['Flutter', 'Dart'],
    link: 'https://github.com/ZheerBarzan/project_forecast',
  ),

  // project_pacman
  ProjectItem(
      title: "project_pacman",
      description: "Pacman retro style Game",
      image: "assets/img/projects/pacman.gif",
      technologies: ['Flutter', 'Dart'],
      link: 'https://github.com/ZheerBarzan/project_pacman'),

  // project_gauss
  ProjectItem(
    title: 'Project_gauss',
    description: 'A Calculator Application ',
    image: 'assets/img/projects/gauss.gif',
    technologies: ['Flutter', 'Dart'],
    link: 'https://github.com/ZheerBarzan/project_gauss',
  ),

  // project_XO
  ProjectItem(
      title: "Project_XO",
      description: "XO retro style Game",
      image: "assets/img/projects/xo.gif",
      technologies: ['Flutter', 'Dart'],
      link: 'https://github.com/ZheerBarzan/tic_tac_toe_game'),

  // project_kasparov
  ProjectItem(
    title: 'Project_Kasparov',
    description: 'A chess game ',
    image: 'assets/img/projects/chess.gif',
    technologies: ['Flutter', 'Dart'],
    link: 'https://github.com/ZheerBarzan/project_kasparov',
  ),

  // project_minesweeper
  ProjectItem(
    title: 'Project_MineSweeper',
    description: 'A MineSweeper game ',
    image: 'assets/img/projects/mineswepper.gif',
    technologies: ['Flutter', 'Dart'],
    link: 'https://github.com/ZheerBarzan/minesweeper-game-in-flutter',
  ),
];
