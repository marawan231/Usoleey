import 'package:flutter/material.dart';

class CreateUnitUtils {
  static late GlobalKey<FormState> formKey = GlobalKey();

  static final Map<String, TextEditingController> createUnitControllers = {
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

  static void disposeControllers() {
    createUnitControllers.values.forEach((controller) => controller.clear());
  }
}
