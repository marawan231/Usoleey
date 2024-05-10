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
      return message ?? S.current.fillField;
    } else if (!RegExp(r"^[a-zA-Z\s]{1,}$").hasMatch(this)) {
      return message ?? 'Please provide a valid name.';
    }
    return null;
  }

  String? validatePassword({String? message}) {
    if (trim().isEmpty) {
      return message ?? S.current.fillField;
    } else if (length < 6) {
      return message ?? S.current.passValidation;
    }
    return null;
  }

  String? validateEmail({String? message}) {
    if (trim().isEmpty) {
      return message ?? S.current.fillField;
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

  String? validatePhone({String? message}) {
    if (trim().isEmpty) {
      return message ?? S.current.fillField;
    } else if (!RegExp(
                r'(^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)')
            .hasMatch(this) ||
        length < 10) {
      return message ?? S.current.phoneValidation;
    }
    return null;
  }
}
