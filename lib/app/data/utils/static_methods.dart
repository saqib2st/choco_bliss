import 'dart:math';
import 'package:get_storage/get_storage.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:choco_bliss/app/data/utils/static_keys.dart';

class DateProvider {
  static int monthdays(int month, int year) {
    const int january = 31;
    const int february = 28;
    const int leapyearfebruary = 29;
    const int march = 31;
    const int april = 30;
    const int may = 30;
    const int june = 30;
    const int july = 31;
    const int august = 31;
    const int september = 30;
    const int october = 31;
    const int november = 30;
    const int december = 31;

    int days = 0;
    switch (month) {
      case 1:
        days = january;
        break;

      case 2:
        if (year % 4 == 0 && year % 100 != 0) {
          days = leapyearfebruary;
        } else {
          days = february;
        }

        break;

      case 3:
        days = march;
        break;

      case 4:
        days = april;
        break;

      case 5:
        days = may;
        break;

      case 6:
        days = june;
        break;

      case 7:
        days = july;
        break;

      case 8:
        days = august;
        break;

      case 9:
        days = september;
        break;

      case 10:
        days = october;
        break;

      case 11:
        days = november;
        break;

      case 12:
        days = december;
        break;

      default:
        break;
    }
    return days;
  }

  static String monthname(int month) {
    String monthname = '';
    const List<String> monthsname = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    switch (month) {
      case 1:
        monthname = monthsname[0];
        break;
      case 2:
        monthname = monthsname[1];
        break;
      case 3:
        monthname = monthsname[2];
        break;
      case 4:
        monthname = monthsname[3];
        break;
      case 5:
        monthname = monthsname[4];
        break;
      case 6:
        monthname = monthsname[5];
        break;
      case 7:
        monthname = monthsname[6];
        break;
      case 8:
        monthname = monthsname[7];
        break;
      case 9:
        monthname = monthsname[8];
        break;
      case 10:
        monthname = monthsname[9];
        break;
      case 11:
        monthname = monthsname[10];
        break;
      case 12:
        monthname = monthsname[11];
        break;
    }
    return monthname;
  }
}

DateTime weekViewdate(DateTime date, int index) {
  int day, month, year, weekday;
  weekday = date.weekday;
  day = date.day;
  month = date.month;
  year = date.year;

  if (weekday > index + 1) {
    for (int i = weekday; i > index + 1; i--) {
      if (day <= DateProvider.monthdays(month, year) && day > 1) {
        day--;
      } else if (day < DateProvider.monthdays(month, year) && day == 1) {
        month = month - 1;
        day = (DateProvider.monthdays(month, year));
      }
    }
  } else if (weekday < index + 1) {
    for (int i = weekday; i < index + 1; i++) {
      if (day < DateProvider.monthdays(month, year) && day >= 1) {
        day++;
      } else if (day <= DateProvider.monthdays(month, year) &&
          day == DateProvider.monthdays(month, year)) {
        month = month + 1;
        day = 1;
      }
    }
  }

  final finalDate = DateTime(year, month, day);
  return finalDate;
}

class StaticMethods {
  static String calculateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var a = 0.5 -
        cos((lat2 - lat1) * p) / 2 +
        cos(lat1 * p) * cos(lat2 * p) * (1 - cos((lon2 - lon1) * p)) / 2;
    return (12742 * asin(sqrt(a))).toStringAsFixed(1);
  }

  static String getCountryflag(String countryCode) {
    String temp = countryCode.toUpperCase().replaceAllMapped(
        RegExp(r'[A-Z]'),
        (match) =>
            String.fromCharCode((match.group(0)?.codeUnitAt(0))! + 127397));
    // print(temp);
    return temp;
  }

  static String getDayFromDateTime(String dateTime) {
    return DateFormat("EEE")
        .format(DateFormat("yyyy-MM-dd HH:mm:ss").parse(dateTime));
  }

  static String getDateFromDateTime(String dateTime) {
    return DateFormat('yyyy-MM-dd').format(DateTime.parse(dateTime));
  }

  static String getHourMintsFromTimeString(String dateTime) {
    return DateFormat("HH:mm").format(DateFormat("HH:mm:ss").parse(dateTime));
  }

  static String getDateWithMonthNameFromDateTime(String dateTime) {
    return DateFormat('dd MMM yyyy').format(DateTime.parse(dateTime));
  }

  static List<String> convertStartEndTimeIntoSlots(
      String startsTime, String endsTime, String duration) {
    DateTime startTime = DateFormat('HH:mm:ss').parse(startsTime);
    DateTime endTime = DateFormat('HH:mm:ss').parse(endsTime);

    List<String> timeSlots = [];
    while (startTime.isBefore(endTime)) {
      timeSlots.add(DateFormat('HH:mm').format(startTime).toString());
      startTime = startTime.add(Duration(minutes: int.parse(duration)));
    }
    return timeSlots;
  }

  static void clearDb() {
    var storage = GetStorage();
    storage.write(GSKeys.isLoggedIn, false);
    storage.remove(GSKeys.agreementId);
    storage.remove(GSKeys.propertyDetailsId);
    storage.remove(GSKeys.userId);
    storage.remove(GSKeys.user);
    storage.remove(GSKeys.isTenant);
    storage.remove(GSKeys.token);
    storage.remove(GSKeys.profile);
    storage.remove(GSKeys.isInvoicePaid);
    storage.remove(GSKeys.isAgreementEdit);
    storage.remove(GSKeys.searchPropertyType);
    storage.remove(GSKeys.isComingFromHome);
    storage.remove(GSKeys.addPropertyRequestBody);
    storage.remove(GSKeys.addPropertyPageNo);
    storage.remove(GSKeys.isPropertyUpdate);
    storage.remove(GSKeys.isDrafts);
    storage.remove(GSKeys.isCardEdit);
    storage.remove(GSKeys.issueType);
    storage.remove(GSKeys.agreementType);
    storage.remove(GSKeys.isCreateInvoice);
    storage.remove(GSKeys.invoiceId);
  }

  static String covertListToString(List list) {
    String temp = '';
    if (list.isNotEmpty) {
      for (var element in list) {
        if (list.last == element) {
          temp = '$temp$element';
        } else {
          temp = '$temp$element,';
        }
      }
    }
    // print(temp);
    return '"$temp"';
  }

  static List<int> covertStringToList(String string) {
    List<String> temp = [];
    List<int> listInt = [];
    // print(string);
    String temps = string.replaceAll('"', '');
    // print(temps);
    if (temps.isNotEmpty) {
      temp = temps.split(',');
      // print(temp.toString());
      for (var element in temp) {
        listInt.add(int.parse(element));
      }
    }
    // print(listInt.toString());
    return listInt;
  }

  static String covertImagesListToString(List list) {
    String temp = '';
    for (var element in list) {
      if (list.last == element) {
        temp = '$temp"$element"';
      } else {
        temp = '$temp"$element",';
      }
    }
    // print(temp);
    return '[$temp]';
  }

  static List<String> covertStringToImagesList(String string) {
    String temp = string;
    temp = temp.replaceAll('[', '');
    temp = temp.replaceAll(']', '');
    temp = temp.replaceAll('"', '');
    List<String> list = temp.split(',');
    // print(list);
    return list;
  }
}
