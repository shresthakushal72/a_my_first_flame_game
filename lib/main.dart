import 'dart:async';
import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/src/gestures/events.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();

  runApp(GameWidget(game: MyFirstGame()));
}

class MyFirstGame extends FlameGame with TapDetector {
  @override
  FutureOr<void> onLoad() {
    // TODO: implement onLoad
    print("<OnloadGameLoop > onload() ");
    return super.onLoad();
  }

  @override
  void update(double dt) {
    // TODO: implement update
    super.update(dt);

    print("<UpdateGameLoop> " + dt.toString());
  }

  @override
  void render(Canvas canvas) {
    // TODO: implement render
    super.render(canvas);

    canvas.drawPaint(Paint()..color = Colors.red);
    print("<Render GameLoop> " + canvas.toString());
  }

  @override
  void onTapUp(TapUpInfo info) {
    // TODO: implement onTapUp
    print("<OnTapUp GameLoop>  User tapped");
    super.onTapUp(info);
  }
}
