import '../annotations/do_not_change_order.dart';
import '../extensions/int_extension.dart';
import '../extensions/string_extension.dart';

@DoNotChangeOrder()
enum DateFormat {
  MMDDYYYY,
  DDMYYYY,
  YYYYMMDD,
  DDMMMYYYY,
  DDMMYYYY;

  static const defaultValue = DateFormat.MMDDYYYY;

  String get label {
    switch (this) {
      case DateFormat.MMDDYYYY:
        return 'MM/DD/YYYY';
      case DateFormat.DDMYYYY:
        return 'DD-MM-YYYY';
      case DateFormat.YYYYMMDD:
        return 'YYYY-MM-DD';
      case DateFormat.DDMMMYYYY:
        return 'DD MMM YYYY';
      case DateFormat.DDMMYYYY:
        return 'DD.MM.YYYY';
    }
  }
}

extension DateTimeFormatExtension on DateTime {
  String parseDateFormatNoYear({required DateFormat dateFormat}) {
    String twoDigit(int n) => n.toString().padLeft(2, '0');
    switch (dateFormat) {
      case DateFormat.MMDDYYYY:
        return '${twoDigit(month)}/${twoDigit(day)}';
      case DateFormat.DDMYYYY:
        return '${twoDigit(day)}-${twoDigit(month)}';
      case DateFormat.YYYYMMDD:
        return '${twoDigit(month)}-${twoDigit(day)}';
      case DateFormat.DDMMMYYYY:
        return '${twoDigit(day)} ${month.monthEnum.abbreviation.capitalize()}';
      case DateFormat.DDMMYYYY:
        return '${twoDigit(day)}.${twoDigit(month)}';
    }
  }

  String parseDateFormat({required DateFormat dateFormat}) {
    String twoDigit(int n) => n.toString().padLeft(2, '0');
    switch (dateFormat) {
      case DateFormat.MMDDYYYY:
        return '${twoDigit(month)}/${twoDigit(day)}/$year';
      case DateFormat.DDMYYYY:
        return '${twoDigit(day)}-${twoDigit(month)}-$year';
      case DateFormat.YYYYMMDD:
        return '$year-${twoDigit(month)}-${twoDigit(day)}';
      case DateFormat.DDMMMYYYY:
        return '${twoDigit(day)} ${month.monthEnum.abbreviation.capitalize()} $year';
      case DateFormat.DDMMYYYY:
        return '${twoDigit(day)}.${twoDigit(month)}.$year';
    }
  }
}
