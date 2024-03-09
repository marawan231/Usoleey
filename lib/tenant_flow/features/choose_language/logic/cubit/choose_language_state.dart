part of 'choose_language_cubit.dart';

@freezed
class ChooseLanguageState with _$ChooseLanguageState {
  const factory ChooseLanguageState.initial() = _Initial;
  const factory ChooseLanguageState.loading() = _Loading;
  const factory ChooseLanguageState.loaded() = _Loaded;
  const factory ChooseLanguageState.error() = _Error;
  // change selected language loading
  const factory ChooseLanguageState.changeSelectedLanguageLoading() =
      _ChangeSelectedLanguageLoading;

  // change selected language loaded

  const factory ChooseLanguageState.changeSelectedLanguageLoaded() =
      _ChangeSelectedLanguageLoaded;
}
