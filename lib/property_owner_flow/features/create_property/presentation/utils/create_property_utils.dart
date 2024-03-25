import 'package:flutter/material.dart';

class CreatePropertyUtils {
  static late GlobalKey<FormState> formKey = GlobalKey();

  static final Map<String, TextEditingController> createPropertyControllers = {
    'name': TextEditingController(),
    'instrumentNumber': TextEditingController(),
    'unitsCount': TextEditingController(),
    'city': TextEditingController(),
    'district': TextEditingController(),
    'street': TextEditingController(),
    'address': TextEditingController(),
    'unitNumber': TextEditingController(),
    'postalCode': TextEditingController(),
  };

  static void disposeControllers() {
    createPropertyControllers.values
        .forEach((controller) => controller.clear());
  }
}
