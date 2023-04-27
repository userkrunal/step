import 'package:flutter/cupertino.dart';

class StepProvider extends ChangeNotifier
{
  int i=0;
  void continu()
  {
    if(i<4)
      {
        i++;
      }
    notifyListeners();
  }
  void close()
  {
    if(i>0)
      {
        i--;
      }
    notifyListeners();
  }
}