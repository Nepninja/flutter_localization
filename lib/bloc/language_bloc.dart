import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc(LanguageState initialState) : super(initialState);

  LanguageState get initialState => LanguageState.initial();
  @override
  Stream<LanguageState> mapEventToState(
    LanguageEvent event,
  ) async* {
    if(event is LoadLanguage){
      yield LanguageState(locale: event.locale);
    }

  }
}
