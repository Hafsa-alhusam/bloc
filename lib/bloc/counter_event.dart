part of 'counter_bloc.dart'; //عشان لو عمل امبرت يعمل للثلاث الملفات

@immutable //عشان كل الاتريبيوت تكون فاينل 
abstract class CounterEvent {}
//كل ايفنت بيكون كلاس

class IncrementEvent extends CounterEvent{}
class DecrementEvent extends CounterEvent{}
class ResetEvent extends CounterEvent{}
