import 'package:flutter/material.dart';
import 'package:gamehub/model/game.dart';

class GameListItem extends StatelessWidget {

  final Game game;

  const GameListItem({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Padding(padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(8),
              child: Image.network(
                game.imagemUrl,
                width: 116,
                height: 82,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return const SizedBox(
                    width: 116,
                    height: 82,
                    child: Center(child: CircularProgressIndicator()),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox(
                    width: 116,
                    height: 82,
                    child: Icon(Icons.broken_image_outlined),
                  );
                },
                ),
            ),
            const SizedBox(
              width: 12,
              ),
              Expanded(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    game.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    ),

                    Text("Plataformas: ${game.platforms.map((p) => p.label).join(', ')}",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    ),

                    Text("Gênero: ${game.genero}"),

                    Row(
                      children: [
                        const Icon(Icons.star, size: 18, color: Colors.amber,),
                        const SizedBox(width: 4,),
                        Text(game.nota.toStringAsFixed(1))
                      ],
                    )
                ],
              ))
          ],
        ),),
    );
  }
}