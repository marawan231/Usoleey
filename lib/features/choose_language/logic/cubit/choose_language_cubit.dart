import 'package:bloc/bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/helpers/cache_helper.dart';
import 'package:flutter_complete_project/core/navigator/route_generator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_language_state.dart';
part 'choose_language_cubit.freezed.dart';

class ChooseLanguageCubit extends Cubit<ChooseLanguageState> {
  ChooseLanguageCubit() : super(ChooseLanguageState.initial());

  String? selectedLanguage;

  void changeLanguage(String language) async {
    emit(ChooseLanguageState.changeSelectedLanguageLoading());

    selectedLanguage = language;
    await CacheHelper.saveData(key: 'language', value: language);
    emit(ChooseLanguageState.changeSelectedLanguageLoaded());
  }
}
