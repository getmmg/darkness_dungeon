import 'package:bonfire/bonfire.dart';
import 'package:darkness_dungeon/main.dart';
import 'package:darkness_dungeon/player/knight.dart';

class DoorKey extends GameDecoration {
  DoorKey(Position position)
      : super.sprite(
          Sprite('itens/key_silver.png'),
          initPosition: position,
          width: tileSize,
          height: tileSize,
        );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player != null) if (position
        .overlaps(gameRef.player.position)) {
      (gameRef.player as Knight).containKey = true;
      remove();
    }
  }
}
