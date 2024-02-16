import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/features/home/data/models/units_model.dart';
import 'package:flutter_complete_project/features/home/data/repository/home_repository.dart';
import 'package:flutter_complete_project/features/home/presentation/logic/cubit/home_state.dart';
import 'package:flutter_complete_project/features/tickets/presentation/logic/cubit/tickets_cubit.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepository) : super(const HomeState.idle());
  final HomeRepository homeRepository;

  List<Units> units = [];
  //selected unit
  Units? selectedUnit;

  void changeSelectedUnit(Units unit) {
    emit(const HomeState.changeSelectedUnitLoading());
    selectedUnit = unit;
    emit(HomeState.changeSelectedUnitSuccess(unit));
  }

  void resetAll() {
    emit(const HomeState.resetAllLoading());

    selectedUnit = null;
    getIt<TicketsCubit>().resetAll();
    emit(const HomeState.resetAllSuccess());
  }

  void getAllUnits() async {
    emit(const HomeState.getAllUnitsLoading());
    var result = await homeRepository.getAllUnits();

    result.when(
      success: (response) {
        // inspect(response.data!.units);
        units = response.data!.units!;
        emit(HomeState.getAllUnitsSuccess(response.data!.units!));
      },
      failure: (networkExceptions) {
        final error = DioExceptionType.getErrorMessage(networkExceptions);
        emit(HomeState.getAllUnitsError(error));
      },
    );
  }
}
