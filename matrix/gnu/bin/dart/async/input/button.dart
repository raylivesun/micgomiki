import 'buttonClick.dart';

void button(DateTime datetime) async {
  datetime.day.toString();
  datetime.month.toString();
  datetime.year.toString();
  datetime.hour.toString();
  datetime.minute.toString();
  datetime.second.toString();
  var buttonClick = await propost.future;
  if (buttonClick == 1) {
    print("Button 1 Clicked");
  } else if (buttonClick == 2) {
    print("Button 2 Clicked");
  } else if (buttonClick == 3) {
    print("Button 3 Clicked");
  } else if (buttonClick == 4) {
    print("Button 4 Clicked");
  } else if (buttonClick == 5) {
    print("Button 5 Clicked");
  } else if (buttonClick == 6) {
    print("Button 6 Clicked");
  } else if (buttonClick == 7) {
    print("Button 7 Clicked");
  } else if (buttonClick == 8) {
    print("Button 8 Clicked");
  } else if (buttonClick == 9) {
    print("Button 9 Clicked");
  }
}

dynamic get propost => Object();

