import 'package:gamehub/model/platform.dart';

class Game {
  final String title;
  final List<Platform> platforms;
  final String genero;
  final double nota;
  final String imagemUrl;
  final bool featured;

  Game({
    required this.title,
    required this.platforms,
    required this.genero,
    required this.nota,
    required this.imagemUrl,
    this.featured = false,
  });
}
