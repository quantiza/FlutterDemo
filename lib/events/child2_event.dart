import 'package:event_bus/event_bus.dart';

EventBus eventBus = EventBus();

class Child2Event {
  String text;
  Child2Event(this.text);
}