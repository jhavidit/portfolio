///
/// string.dart
/// Created by Mohammed Sadiq on 27 August 2022
///

extension StringX on String? {
  bool hasPrefix(String pattern) {
    if (isNullOrEmpty()) {
      return false;
    } else {
      final match = pattern.matchAsPrefix(this!);
      return match != null;
    }
  }

  // this extension checks for null and empty state of a string
  bool isNullOrEmpty() {
    if (this == null || this?.isEmpty == true) {
      return true;
    } else {
      return false;
    }
  }

  String toStringOrEmpty() {
    if (this == null || this?.isEmpty == true) {
      return "";
    } else {
      return toString();
    }
  }

  /// This function removes all non integer value (including negative sign).
  ///
  /// It return a string that is formatted in INR format with required separation.
  String rupeeFormatString({required String prefix}) {
    if (this == null) {
      return '';
    } else {
      String sanitisedValue = (this ?? '').sanitisedNumberString();
      List<String> chars =
          sanitisedValue.split('').reversed.join().split('') ?? [];
      String newString = '';
      List<int> commaPlace = [3, 5, 7, 9, 11, 13];
      for (int i = 0; i < chars.length; i++) {
        if (commaPlace.contains(i)) newString += ',';
        newString += chars[i];
      }
      return prefix + newString.split('').reversed.join();
    }
  }

  /// This function removes all non integer value (including negative sign).
  ///
  /// It return a string that completely contains integer values.
  String sanitisedNumberString() {
    if (this == null) {
      return '';
    } else {
      String thisString = (this ?? '')
          .replaceAll(',', '')
          .replaceAll(' ', '')
          .replaceAll('.', '');
      var sanitisedValue = '';
      for (int i = 0; i < thisString.length; ++i) {
        if (thisString[i].contains(RegExp(r'[0-9]'))) {
          sanitisedValue = sanitisedValue + thisString[i];
        }
      }
      return sanitisedValue;
    }
  }

  bool isEquals(String text, {bool ignoreCase = false}) {
    if (!ignoreCase) {
      return text == this;
    } else {
      return this?.toUpperCase() == text.toUpperCase();
    }
  }
}

extension JsonExtension on Map<String, dynamic> {
  dynamic getOrNull({required String key}) {
    try {
      if(containsKey(key)) {
        return this[key];
      }
      else {
        return null;
      }
    }
    catch (e) {
      return null;
    }

  }

  dynamic getOrDefault({required String key, required dynamic defaultValue}) {
    try {
      if(containsKey(key)) {
        return this[key];
      }
      else {
        return defaultValue;
      }
    }
    catch (e) {
      return defaultValue;
    }

  }
}
