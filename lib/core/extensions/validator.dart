
import '../../generated/l10n.dart';

extension Validator on String {
  String? noValidate() {
    return null;
  }

  String? validateEmpty({String? message}) {
    if (trim().isEmpty) {
      return message ?? S.current.validateEmptyMessage;
    }
    return null;
  }

  String? validateName({String? message}) {
    if (trim().isEmpty) {
      return message ?? 'This field is mandatory';
    } else if (!RegExp(r"^[a-zA-Z\s]{1,}$").hasMatch(this)) {
      return message ?? 'Please provide a valid name.';
    }
    return null;
  }

  String? validatePassword({String? message}) {
    if (trim().isEmpty) {
      return message;
    } else if (length < 6) {
      return message;
    }
    return null;
  }

  String? validateEmail({String? message}) {
    if (trim().isEmpty) {
      return message ?? 'This field is mandatory';
    } else if (!RegExp(
            r"^[\w-]+(\.[\w-]+)*@[A-Za-z0-9]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,})$")
        .hasMatch(this)) {
      return message ?? 'Please provide a valid email address.';
    }
    return null;
  }

  String? validateEmailORNull({String? message}) {
    if (trim().isNotEmpty) {
      if (!RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(this)) {
        return message;
      }
    }
    return null;
  }


  String? validatePasswordConfirm({required String pass, String? message}) {
    if (trim().isEmpty) {
      return message;
    } else if (this != pass) {
      return message;
    }
    return null;
  }
}