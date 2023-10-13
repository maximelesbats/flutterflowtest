import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _testpicture = prefs
              .getStringList('ff_testpicture')
              ?.map((x) {
                try {
                  return TestdatatypeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _testpicture;
    });
    _safeInit(() {
      _Testpersiste = prefs.getStringList('ff_Testpersiste') ?? _Testpersiste;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _test = false;
  bool get test => _test;
  set test(bool _value) {
    _test = _value;
  }

  int _nombre = 5;
  int get nombre => _nombre;
  set nombre(int _value) {
    _nombre = _value;
  }

  List<int> _Nombre2 = [5];
  List<int> get Nombre2 => _Nombre2;
  set Nombre2(List<int> _value) {
    _Nombre2 = _value;
  }

  void addToNombre2(int _value) {
    _Nombre2.add(_value);
  }

  void removeFromNombre2(int _value) {
    _Nombre2.remove(_value);
  }

  void removeAtIndexFromNombre2(int _index) {
    _Nombre2.removeAt(_index);
  }

  void updateNombre2AtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _Nombre2[_index] = updateFn(_Nombre2[_index]);
  }

  void insertAtIndexInNombre2(int _index, int _value) {
    _Nombre2.insert(_index, _value);
  }

  List<String> _autocomplete = [
    'Apple',
    'Samsung',
    'ITlabs',
    'Dell',
    'Danemark'
  ];
  List<String> get autocomplete => _autocomplete;
  set autocomplete(List<String> _value) {
    _autocomplete = _value;
  }

  void addToAutocomplete(String _value) {
    _autocomplete.add(_value);
  }

  void removeFromAutocomplete(String _value) {
    _autocomplete.remove(_value);
  }

  void removeAtIndexFromAutocomplete(int _index) {
    _autocomplete.removeAt(_index);
  }

  void updateAutocompleteAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _autocomplete[_index] = updateFn(_autocomplete[_index]);
  }

  void insertAtIndexInAutocomplete(int _index, String _value) {
    _autocomplete.insert(_index, _value);
  }

  dynamic _pdffile;
  dynamic get pdffile => _pdffile;
  set pdffile(dynamic _value) {
    _pdffile = _value;
  }

  String _color = '#eb4034';
  String get color => _color;
  set color(String _value) {
    _color = _value;
  }

  List<TestdatatypeStruct> _testpicture = [];
  List<TestdatatypeStruct> get testpicture => _testpicture;
  set testpicture(List<TestdatatypeStruct> _value) {
    _testpicture = _value;
    prefs.setStringList(
        'ff_testpicture', _value.map((x) => x.serialize()).toList());
  }

  void addToTestpicture(TestdatatypeStruct _value) {
    _testpicture.add(_value);
    prefs.setStringList(
        'ff_testpicture', _testpicture.map((x) => x.serialize()).toList());
  }

  void removeFromTestpicture(TestdatatypeStruct _value) {
    _testpicture.remove(_value);
    prefs.setStringList(
        'ff_testpicture', _testpicture.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTestpicture(int _index) {
    _testpicture.removeAt(_index);
    prefs.setStringList(
        'ff_testpicture', _testpicture.map((x) => x.serialize()).toList());
  }

  void updateTestpictureAtIndex(
    int _index,
    TestdatatypeStruct Function(TestdatatypeStruct) updateFn,
  ) {
    _testpicture[_index] = updateFn(_testpicture[_index]);
    prefs.setStringList(
        'ff_testpicture', _testpicture.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTestpicture(int _index, TestdatatypeStruct _value) {
    _testpicture.insert(_index, _value);
    prefs.setStringList(
        'ff_testpicture', _testpicture.map((x) => x.serialize()).toList());
  }

  List<String> _Testpersiste = [];
  List<String> get Testpersiste => _Testpersiste;
  set Testpersiste(List<String> _value) {
    _Testpersiste = _value;
    prefs.setStringList('ff_Testpersiste', _value);
  }

  void addToTestpersiste(String _value) {
    _Testpersiste.add(_value);
    prefs.setStringList('ff_Testpersiste', _Testpersiste);
  }

  void removeFromTestpersiste(String _value) {
    _Testpersiste.remove(_value);
    prefs.setStringList('ff_Testpersiste', _Testpersiste);
  }

  void removeAtIndexFromTestpersiste(int _index) {
    _Testpersiste.removeAt(_index);
    prefs.setStringList('ff_Testpersiste', _Testpersiste);
  }

  void updateTestpersisteAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _Testpersiste[_index] = updateFn(_Testpersiste[_index]);
    prefs.setStringList('ff_Testpersiste', _Testpersiste);
  }

  void insertAtIndexInTestpersiste(int _index, String _value) {
    _Testpersiste.insert(_index, _value);
    prefs.setStringList('ff_Testpersiste', _Testpersiste);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
