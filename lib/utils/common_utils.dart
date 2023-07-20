import 'package:age_calculator/age_calculator.dart';
import 'package:intl/intl.dart';

class CommonUtils {
  /// 250101→XX25年01月01日 FIXME 使用決め 暫定で1940年から2039年まで
  static String convertDateTime(String str) {
    if (str.length != 6) {
      throw Exception("convertDateTime error");
    } else {
      final year = int.parse(str.substring(0, 2)) < 40
          ? 2000 + int.parse(str.substring(0, 2))
          : 1900 + int.parse(str.substring(0, 2));
      final month = int.parse(str.substring(2, 4));
      final day = int.parse(str.substring(4, 6));
      return dateTimeToString(DateTime(year, month, day));
    }
  }

  static String dateTimeToString(
    DateTime dateTime, {
    String format = 'yyyy年MM月d日',
  }) {
    return DateFormat(format).format(dateTime);
  }

  static String s(String? str) {
    if (str == null) {
      throw Exception("unwrapError");
    } else {
      return str;
    }
  }

  static int age(int birthday) {
    DateTime bd = DateTime.fromMillisecondsSinceEpoch(birthday);
    return AgeCalculator.age(bd).years;
  }
}
