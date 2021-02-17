part of 'main_bloc.dart';

@immutable
abstract class CriptorEvent {}

class CriptIt extends CriptorEvent {
  final String string;
  final int key;

  CriptIt(this.string, this.key);
}

class DecriptIT extends CriptorEvent {
  final String string;
  final int key;
  DecriptIT(
    this.string,
    this.key,
  );
}
