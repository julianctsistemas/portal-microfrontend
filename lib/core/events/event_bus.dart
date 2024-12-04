import 'dart:async';

class EventBus {
  final _streamController = StreamController.broadcast();

  Stream get stream => _streamController.stream;

  void fire(event) => _streamController.add(event);

  void dispose() => _streamController.close();
}
