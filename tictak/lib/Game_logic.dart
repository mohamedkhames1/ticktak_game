import 'dart:math';

import 'package:flutter/material.dart';

class Player {
  static const x = 'X';
  static const o = 'O';
  static List<int> playerX = [];
  static List<int> playero = [];
}

extension ContansAll on List {
  containsAll(int x, int y, [z]) {
    return Player.playerX.contains(x) &&
        Player.playerX.contains(y) &&
        Player.playerX.contains(z);
  }
}

class Game {
  void playGame(int index, String activePlayer) {
    if (activePlayer == "X") {
      Player.playerX.add(index);
    } else {
      Player.playero.add(index);
    }
  }

  String chickwiner() {
    String winner = '';
    if (Player.playerX.containsAll(0, 1, 2) ||
        Player.playerX.containsAll(3, 4, 5) ||
        Player.playerX.containsAll(6, 7, 8) ||
        Player.playerX.containsAll(0, 3, 6) ||
        Player.playerX.containsAll(1, 4, 7) ||
        Player.playerX.containsAll(2, 5, 8) ||
        Player.playerX.containsAll(0, 4, 8) ||
        Player.playerX.containsAll(2, 4, 6)) {
      winner = 'X';
    } else if (Player.playero.containsAll(0, 1, 2) ||
        Player.playero.containsAll(3, 4, 5) ||
        Player.playero.containsAll(6, 7, 8) ||
        Player.playero.containsAll(0, 3, 6) ||
        Player.playero.containsAll(1, 4, 7) ||
        Player.playero.containsAll(2, 5, 8) ||
        Player.playero.containsAll(0, 4, 8) ||
        Player.playero.containsAll(2, 4, 6)) {
      winner = 'O';
    } else {
      winner = "Drawer";
    }
    return winner;
  }

  Future<void> autoPlay(activplayer) async {
    int indx = 0;
    List<int> emptycell = [];

    for (int i = 0; i < 9; i++) {
      if (!(Player.playero.contains(i) || Player.playerX.contains(i))) {
        emptycell.add(i);
      }
    }
    if (Player.playerX.containsAll(0, 1) && emptycell.contains(2)) {
      indx = 2;
    }
    else if (Player.playerX.containsAll(0, 1,) && emptycell.contains(2)) {
      indx = 2;
    } else if (Player.playerX.containsAll(3, 4,) && emptycell.contains(5)) {
      indx = 5;
    } else if (Player.playerX.containsAll(6, 7,) && emptycell.contains(8)) {
      indx = 8;
    } else if (Player.playerX.containsAll(0, 3,) && emptycell.contains(6)) {
      indx = 6;
    } else if (Player.playerX.containsAll(1, 4,) && emptycell.contains(7)) {
      indx = 7;
    } else if (Player.playerX.containsAll(2, 5,) && emptycell.contains(8)) {
      indx = 8;
    } else if (Player.playerX.containsAll(0, 4,) && emptycell.contains(8)) {
      indx = 8;
    } else if (Player.playerX.containsAll(2, 4,) && emptycell.contains(6)) {
      indx = 6;
    }
    else {
      Random random = Random();
      indx = emptycell[(random.nextInt(emptycell.length))];
    }
    playGame(indx, activplayer);
  }
}