import 'package:gamehub/model/platform.dart';
import 'package:gamehub/model/game.dart';

final games = <Game>[
  Game(
    title: 'Cyberpunk 2077',
    platforms: [Platform.pc, Platform.playstation, Platform.xbox],
    genero: 'RPG',
    nota: 4.7,
    imagemUrl:
        'https://cdn.akamai.steamstatic.com/steam/apps/1091500/header.jpg',
    featured: true,
  ),
  Game(
    title: 'Hollow Knight',
    platforms: [
      Platform.pc,
      Platform.nintendo,
      Platform.playstation,
      Platform.xbox,
    ],
    genero: 'Metroidvania',
    nota: 4.9,
    imagemUrl: 'https://cdn.akamai.steamstatic.com/steam/apps/367520/header.jpg',
    featured: true,
  ),
  Game(
    title: 'Stardew Valley',
    platforms: [
      Platform.pc,
      Platform.nintendo,
      Platform.playstation,
      Platform.xbox,
    ],
    genero: 'Simulação',
    nota: 4.8,
    imagemUrl: 'https://cdn.akamai.steamstatic.com/steam/apps/413150/header.jpg',
  ),
  Game(
    title: 'Baldur’s Gate 3',
    platforms: [Platform.pc, Platform.playstation, Platform.xbox],
    genero: 'RPG',
    nota: 4.9,
    imagemUrl:
        'https://cdn.akamai.steamstatic.com/steam/apps/1086940/header.jpg',
    featured: true,
  ),
  Game(
    title: 'Portal 2',
    platforms: [Platform.pc, Platform.xbox],
    genero: 'Quebra-cabeça',
    nota: 4.9,
    imagemUrl: 'https://cdn.akamai.steamstatic.com/steam/apps/620/header.jpg',
  ),
  Game(
    title: 'ELDEN RING',
    platforms: [Platform.pc, Platform.playstation, Platform.xbox],
    genero: 'RPG de ação',
    nota: 4.8,
    imagemUrl:
        'https://cdn.akamai.steamstatic.com/steam/apps/1245620/header.jpg',
    featured: true,
  ),
];
