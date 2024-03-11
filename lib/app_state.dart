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

  double _totalProlabore = 0.0;
  double get totalProlabore => _totalProlabore;
  set totalProlabore(double value) {
    _totalProlabore = value;
  }

  double _totalClinica = 0.0;
  double get totalClinica => _totalClinica;
  set totalClinica(double value) {
    _totalClinica = value;
  }

  List<double> _numeros = [];
  List<double> get numeros => _numeros;
  set numeros(List<double> value) {
    _numeros = value;
  }

  void addToNumeros(double value) {
    _numeros.add(value);
  }

  void removeFromNumeros(double value) {
    _numeros.remove(value);
  }

  void removeAtIndexFromNumeros(int index) {
    _numeros.removeAt(index);
  }

  void updateNumerosAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _numeros[index] = updateFn(_numeros[index]);
  }

  void insertAtIndexInNumeros(int index, double value) {
    _numeros.insert(index, value);
  }

  double _totalHorasDisponiveis = 0.0;
  double get totalHorasDisponiveis => _totalHorasDisponiveis;
  set totalHorasDisponiveis(double value) {
    _totalHorasDisponiveis = value;
  }

  double _totalCustosFixos = 0.0;
  double get totalCustosFixos => _totalCustosFixos;
  set totalCustosFixos(double value) {
    _totalCustosFixos = value;
  }
}
