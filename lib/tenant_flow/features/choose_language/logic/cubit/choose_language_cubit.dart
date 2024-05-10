import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter_complete_project/core/helpers/cache_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../generated/l10n.dart';

part 'choose_language_cubit.freezed.dart';

part 'choose_language_state.dart';

class ChooseLanguageCubit extends Cubit<ChooseLanguageState> {
  ChooseLanguageCubit() : super(_Initial());

  void changeLanguage(String languageCode) async {
    emit(state.copyWith(language: Locale(languageCode)));
    await CacheHelper.saveData(key: 'language', value: languageCode);
    await S.load(state.language!);
  }
}
