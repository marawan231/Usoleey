import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_home/data/models/home_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/enums/enums.dart';
import '../../../data/repository/owner_home_repository.dart';

part 'owner_home_cubit.freezed.dart';
part 'owner_home_state.dart';

class OwnerHomeCubit extends Cubit<OwnerHomeState> {
  final OwnerHomeRepository ownerHomeRepository;

  OwnerHomeCubit(this.ownerHomeRepository) : super(const _Initial());

  Future<void> getHomeStats() async {
    final result = await this.ownerHomeRepository.getHomeStats();
    result.when(success: (homeModel) {
      emit(state.copyWith(
          homeModel: homeModel, getHomeStatsState: RequestState.success));
    }, failure: (failure) {
      emit(state.copyWith(getHomeStatsState: RequestState.error));
    });
  }
}
