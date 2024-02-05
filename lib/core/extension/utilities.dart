import 'package:intl/intl.dart';
class Utilities{

  String currencyFormat(double amount, String locale){
    final currencyFormat = NumberFormat.currency(locale: locale, symbol: '₺');
    return currencyFormat.format(amount);

  }
}