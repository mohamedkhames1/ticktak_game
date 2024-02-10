import 'package:flutter/material.dart';
import 'package:tictak/Game_logic.dart';

class PageScreen extends StatefulWidget {
  const PageScreen({super.key});

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  String ActivePlayer = 'X';
  bool GameOver = false;
  int turn = 0;
  Game game = Game();
  String result = '';
  bool isSwatich = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            SwitchListTile.adaptive(
                title: const Text(
                  'Turn on/of Tow Player',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                value: isSwatich,
                onChanged: (val) => setState(() {
                      isSwatich = val;
                    })),
            Text(
              'It\'s $ActivePlayer turn'.toUpperCase(),
              style: const TextStyle(fontSize: 52, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: GridView.count(
                padding: const EdgeInsets.all(16),
                crossAxisCount: 3,
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 15.0,
                childAspectRatio: 1.0,
                children: List.generate(
                    9,
                    (index) => InkWell(
                          onTap:GameOver? null: () => _onTap(index),
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Theme.of(context).shadowColor),
                            child: Center(
                              child: Text(
                                Player.playero.contains(index)
                                    ? 'O'
                                    : Player.playerX.contains(index)
                                        ? 'X'
                                        : "",
                                style: TextStyle(
                                    fontSize: 52,
                                    color: Player.playerX.contains(index)
                                        ? Colors.blue
                                        : Colors.pink),
                              ),
                            ),
                          ),
                        )),
              ),
            ),
            Text(
              result,
              style: const TextStyle(fontSize: 42, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  ActivePlayer = "X";
                  GameOver = false;
                  turn = 0;
                  game = Game();
                  result = '';
                  isSwatich = false;
                  Player.playero = [];
                  Player.playerX = [];
                });
              },
              icon: const Icon(Icons.replay),
              label: const Text('Replay the game'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).splashColor)),
            ),
          ],
        ),
      ),
    );
  }

  _onTap(int index) async {
    if ((Player.playero.isEmpty || !Player.playero.contains(index)) &&
        (Player.playerX.isEmpty || !Player.playerX.contains(index))) {
      game.playGame(index, ActivePlayer);
      upstate();
    }
    if ((!isSwatich && !GameOver && turn!=9)) {
      await game.autoPlay(ActivePlayer);
      upstate();
    }
  }

  void upstate() {
    String winnerplay = game.chickwiner();
    setState(() {
      turn++;
      ActivePlayer = (ActivePlayer == "X") ? "O" : "X";
      game.chickwiner();
      if (winnerplay != 'Drawer') {
        GameOver=true;
        result = '$winnerplay is Winner';
      } else if(turn==9&& !GameOver ) {
        result = 'Drawer';
      }
    });
  }
}
