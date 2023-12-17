part of 'intranet_cubit_cubit.dart';

@immutable
abstract class IntranetCubitState {}

class IntranetCubitInitial extends IntranetCubitState {}

class ConnectedState extends IntranetCubitState {
  final String message;
  ConnectedState({required this.message});
}

class NotConnectedState extends IntranetCubitState {
  final String message;
  NotConnectedState({required this.message});
}
