import 'dart:async';

import 'package:courses/tvs/presentations/controller/tvs_events.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class TvsBloc extends Bloc<TvsEvents, int> {
  TvsBloc(super.initialState) {
    on<IncreaseCounter>(_increaseCounter);
  }

  Future<void> _increaseCounter(IncreaseCounter event, Emitter<int> emit) async {
    Future.delayed(Duration(seconds: 10));
    emit(event.value);
  }
}
