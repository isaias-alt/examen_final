/*import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {

  CalculatorBloc() : super(CalculatorState());
  // Stream<String> retornaString() async* {
  //   yield 'Hola Mundo';
  // }



  @override
  // ignore: override_on_non_overriding_member
  Stream<CalculatorState> mapEventToState(
    CalculatorEvent event,
  ) async* {
    
      if ( event is ResetAC ) {
        yield CalculatorState(
          firstNumber: '0',
          mathResult: '0',
          secondNumber: '0',
          operation: 'none'
        );
      } else if ( event is AddNumber ) {
        yield CalculatorState(
          firstNumber: '0',
          secondNumber: '0',
          operation: 'none',
          mathResult: (state.mathResult == '0')
                        ? event.number
                        : state.mathResult + event.number,
        );
      }


  }
}*/