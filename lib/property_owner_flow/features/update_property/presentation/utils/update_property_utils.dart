import 'package:flutter/material.dart';
import 'package:flutter_complete_project/property_owner_flow/features/property_details/data/models/propert_details_model.dart';

class UpdatePropertyUtils {
  static late GlobalKey<FormState> formKey = GlobalKey();

  static final Map<String, TextEditingController> updatePropertyControllers = {
    'name': TextEditingController(),
    'address': TextEditingController(),
    'street': TextEditingController(),
    'district': TextEditingController(),
    'city': TextEditingController(),
    'unitsCount': TextEditingController(),
    'instrumentNumber': TextEditingController(),
    'blockNumber': TextEditingController(),
    'postalCode': TextEditingController(),
  };

  static void initPropertyControllersValues(
      PropertDetailsModel propertDetailsModel) {
    updatePropertyControllers['name']!.text = propertDetailsModel.name ?? '';
    updatePropertyControllers['address']!.text =
        propertDetailsModel.address ?? '';
    updatePropertyControllers['street']!.text =
        propertDetailsModel.street ?? '';
    updatePropertyControllers['district']!.text =
        propertDetailsModel.district ?? '';
    updatePropertyControllers['unitsCount']!.text =
        propertDetailsModel.unitsCount.toString();
    updatePropertyControllers['district']!.text =
        propertDetailsModel.district ?? '';
    updatePropertyControllers['instrumentNumber']!.text =
        propertDetailsModel.instrumentNumber ?? '';
    updatePropertyControllers['blockNumber']!.text =
        propertDetailsModel.blockNumber.toString();
    updatePropertyControllers['postalCode']!.text =
        propertDetailsModel.postalCode.toString();
  }

  static void disposeControllers() {
    updatePropertyControllers.values
        .forEach((controller) => controller.clear());
  }
}
