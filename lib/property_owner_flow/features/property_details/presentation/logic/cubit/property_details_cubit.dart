import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/repository/property_details_repository.dart';

part 'property_details_cubit.freezed.dart';
part 'property_details_state.dart';

class PropertyDetailsCubit extends Cubit<PropertyDetailsState> {
  final PropertyDetailsRepository propertyDetailsRepository;

  PropertyDetailsCubit(this.propertyDetailsRepository)
      : super(const _Initial());

  Future<void> getPropertyDetails({required int id}) async {}
}
