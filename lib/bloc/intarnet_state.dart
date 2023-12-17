part of 'intarnet_bloc.dart';

@immutable
abstract class IntarnetState {}

class IntarnetInitial extends IntarnetState {}

class ConnectedState extends IntarnetState {
  final String message;
  ConnectedState({required this.message});
}
class NotConnectedState extends IntarnetState {
  final String message;
  NotConnectedState({required this.message});
}
