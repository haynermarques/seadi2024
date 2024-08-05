import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _drawer = false;
  bool get drawer => _drawer;
  set drawer(bool value) {
    _drawer = value;
  }

  bool _hideMenu = false;
  bool get hideMenu => _hideMenu;
  set hideMenu(bool value) {
    _hideMenu = value;
  }

  String _tipos = '';
  String get tipos => _tipos;
  set tipos(String value) {
    _tipos = value;
  }
}
