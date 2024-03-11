import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'custos_clinica_widget.dart' show CustosClinicaWidget;
import 'package:flutter/material.dart';

class CustosClinicaModel extends FlutterFlowModel<CustosClinicaWidget> {
  ///  Local state fields for this component.

  List<double> listaNumeros = [];
  void addToListaNumeros(double item) => listaNumeros.add(item);
  void removeFromListaNumeros(double item) => listaNumeros.remove(item);
  void removeAtIndexFromListaNumeros(int index) => listaNumeros.removeAt(index);
  void insertAtIndexInListaNumeros(int index, double item) =>
      listaNumeros.insert(index, item);
  void updateListaNumerosAtIndex(int index, Function(double) updateFn) =>
      listaNumeros[index] = updateFn(listaNumeros[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<CustosVariaveisRecord>? outListanalistaEdit;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<CustosVariaveisRecord>? outListanalista;
  // State field(s) for despesnaNome widget.
  FocusNode? despesnaNomeFocusNode;
  TextEditingController? despesnaNomeController;
  String? Function(BuildContext, String?)? despesnaNomeControllerValidator;
  // State field(s) for despesaValor widget.
  FocusNode? despesaValorFocusNode;
  TextEditingController? despesaValorController;
  String? Function(BuildContext, String?)? despesaValorControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<CustosVariaveisRecord>? outLista;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    despesnaNomeFocusNode?.dispose();
    despesnaNomeController?.dispose();

    despesaValorFocusNode?.dispose();
    despesaValorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
