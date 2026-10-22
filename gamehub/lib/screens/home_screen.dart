import 'package:flutter/material.dart';
import 'package:gamehub/data/games_data.dart';
import 'package:gamehub/widgets/game_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GameHub"),
      ),
      body: Padding(padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Todos os jogos", 
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
          ),
          const SizedBox(height: 12,),
          Expanded(child: ListView.builder(
            itemCount: games.length,
            itemBuilder: (context, index) {
              return GameListItem(game: games[index]);
            }))
        ],       
      ),
      ),
    );
  }
}