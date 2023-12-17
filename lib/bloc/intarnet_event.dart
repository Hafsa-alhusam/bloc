part of 'intarnet_bloc.dart';

@immutable
abstract class IntarnetEvent {}

class ConnectedEvent extends IntarnetEvent{}
class NotConnectedEvent extends IntarnetEvent{}