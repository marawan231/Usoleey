import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/enums/enums.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_home/presentation/logic/cubit/owner_home_cubit.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_notification/data/models/notification_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/repository/owner_notification_repository.dart';

part 'owner_notification_cubit.freezed.dart';
part 'owner_notification_state.dart';

class OwnerNotificationCubit extends Cubit<OwnerNotificationState> {
  final OwnerNotificationRepository ownerNotificationRepository;

  OwnerNotificationCubit(this.ownerNotificationRepository)
      : super(const _Initial());

  int count = 0;

  Future<void> getOwnerNotifications({bool firstTime = false}) async {
    if (firstTime) {
      emit(state.copyWith(
          page: 1,
          notifications: [],
          getOwnerNotificationState: RequestState.loading));
    }
    if (count != 0 && state.notifications.length >= count) {
      return;
    }
    final result = await ownerNotificationRepository.getOwnerNotification(
        page: state.page);
    result.when(success: (ticketModel) {
      getIt<OwnerHomeCubit>().updateNotificationCount(0);
      getIt<HomeCubit>().updateNotificationCount(0);
      List<OwnerNotificationItem> newList = List.from(state.notifications)
        ..addAll(ticketModel.notifications ?? []);
      count = ticketModel.pagination!.count!;
      emit(state.copyWith(
          notifications: newList,
          getOwnerNotificationState: RequestState.success,
          page: state.page + 1));
    }, failure: (failure) {
      emit(state.copyWith(getOwnerNotificationState: RequestState.error));
    });
  }
}
