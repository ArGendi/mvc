import 'package:bloc/bloc.dart';
import 'package:mvc/controllers/counter/counter_state.dart';
import 'package:mvc/models/counter_info.dart';

class CounterCubit extends Cubit<CounterState>{
  List<CounterInfo> counters = [
    CounterInfo(name: 'abdo'),
    CounterInfo(name: 'Ahmed', counter: 5),
  ];

  CounterCubit() : super(InitCounterState());

  void inc(int i){
    counters[i].counter++;
    emit(IncCounterState());
  }
}