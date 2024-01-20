import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_language_state.dart';
part 'choose_language_cubit.freezed.dart';

class ChooseLanguageCubit extends Cubit<ChooseLanguageState> {
  ChooseLanguageCubit() : super(ChooseLanguageState.initial());

  String? selectedLanguage;

  void changeLanguage(String language) {
    emit(ChooseLanguageState.changeSelectedLanguageLoading());

    selectedLanguage = language;

    emit(ChooseLanguageState.changeSelectedLanguageLoaded());
  }
}
