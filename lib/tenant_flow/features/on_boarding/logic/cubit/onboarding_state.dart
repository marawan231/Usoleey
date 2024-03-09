part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;

  //reached last onboarding screen loading
  const factory OnboardingState.reachedLastOnboardingScreenLoading() =
      _ReachedLastOnboardingScreenLoading;

  //reached last onboarding screen loaded

  const factory OnboardingState.reachedLastOnboardingScreenLoaded() =
      _ReachedLastOnboardingScreenLoaded;
}
