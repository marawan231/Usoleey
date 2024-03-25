import 'package:bloc/bloc.dart';
import 'package:flutter_complete_project/core/helpers/cache_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_language_cubit.freezed.dart';
part 'choose_language_state.dart';
 
class ChooseLanguageCubit extends Cubit<ChooseLanguageState> {
  ChooseLanguageCubit() : super(ChooseLanguageState.initial());

  String? selectedLanguage;

  void changeLanguage(String language) async {
    print('language is$language');
    emit(ChooseLanguageState.changeSelectedLanguageLoading());

    selectedLanguage = language;
    await CacheHelper.saveData(key: 'language', value: language);
    emit(ChooseLanguageState.changeSelectedLanguageLoaded());
  }
}
