import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_cubit.freezed.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState.initial());
  int currentIndex = 0;
  //reached last onboarding screen
  void reachedLastOnboardingScreen(int value) {
    log('reachedLastOnboardingScreen');
    emit(OnboardingState.reachedLastOnboardingScreenLoading());
    currentIndex = value;
    emit(OnboardingState.reachedLastOnboardingScreenLoaded());
  }
}
