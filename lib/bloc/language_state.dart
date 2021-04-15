part of 'language_bloc.dart';

class LanguageState extends Equatable {
  final Locale locale;

  LanguageState({this.locale});

  factory LanguageState.initial() => LanguageState(locale: Locale('en', 'US'));

  LanguageState copyWith({Locale locale}) => LanguageState(locale: locale ?? this.locale);

  @override
  // TODO: implement props
  List<Object> get props => [locale];

}


