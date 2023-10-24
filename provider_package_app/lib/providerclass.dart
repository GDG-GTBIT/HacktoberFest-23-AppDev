import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import "./modal.dart";

class SavedData with ChangeNotifier {
  NewData data = NewData("Hello World !! ");

  NewData get value {
    getData();
    return data;
  }

  void getData() async {
    final SharedPreferences inst = await SharedPreferences.getInstance();
    data.newValue = (inst.getString("key") != null)
        ? (inst.getString("key")!)
        : "Hello World !!";
    notifyListeners();
  }

  void settingValue(String value) async {
    final SharedPreferences inst = await SharedPreferences.getInstance();
    inst.setString("key", value);
    getData();
  }
}
