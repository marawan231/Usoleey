import 'package:flutter/material.dart';
import 'package:flutter_complete_project/property_owner_flow/features/unit_details/data/models/unit_details_model.dart';
import 'package:intl/intl.dart';

class UpdateUnitUtils {
  static final Map<String, TextEditingController> updateUnitControllers = {
    'name': TextEditingController(),
    'rent': TextEditingController(),
    'rentCollectionDate': TextEditingController(),
    'electricityAccount': TextEditingController(),
    'waterAccount': TextEditingController(),
    'address': TextEditingController(),
    'space': TextEditingController(),
    'rooms': TextEditingController(),
    'bathrooms': TextEditingController(),
    'conditioners': TextEditingController(),
    'unitNumber': TextEditingController(),
  };

  static void initUnitControllersValues(UnitDetailsModel unitDetailsModel) {
    updateUnitControllers['name']!.text = unitDetailsModel.name ?? '';
    updateUnitControllers['rent']!.text = unitDetailsModel.rent.toString();
    updateUnitControllers['rentCollectionDate']!.text =
        DateFormat("E, M/d/yyyy")
            .format(DateTime.parse(unitDetailsModel.rentCollectionDate!));
    updateUnitControllers['electricityAccount']!.text =
        unitDetailsModel.electricityAccount ?? '';
    updateUnitControllers['waterAccount']!.text =
        unitDetailsModel.waterAccount ?? '';
    updateUnitControllers['address']!.text = unitDetailsModel.address ?? '';
    updateUnitControllers['space']!.text = unitDetailsModel.space.toString();
    updateUnitControllers['unitNumber']!.text = unitDetailsModel.id.toString();
  }
}
