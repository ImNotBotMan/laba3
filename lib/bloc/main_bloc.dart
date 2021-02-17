import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
import 'package:meta/meta.dart';

import '../criptor.dart';

part 'main_event.dart';
part 'main_state.dart';

class CriptorBloc extends Bloc<CriptorEvent, CriptorState> {
  CriptorBloc() : super(CriptorMainState());

  @override
  Stream<CriptorState> mapEventToState(
    CriptorEvent event,
  ) async* {
    yield LoadingState();
    await Future.delayed(Duration(seconds: 2));
    if (event is CriptIt) {
      await criptor(event.string, event.key, true);
      yield CloseLoadingState();
      yield PopUpState();
    }
    if (event is DecriptIT) {
      await criptor(event.string, event.key, false);
      yield CloseLoadingState();
      yield PopUpState();
    }
  }
}
