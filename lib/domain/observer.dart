import 'package:flutter_bloc/flutter_bloc.dart';

class Observer extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(
        'current state: ${transition.currentState}, triggered event: ${transition.event}, new state: ${transition.nextState}');
    super.onTransition(bloc, transition);
  }
}
