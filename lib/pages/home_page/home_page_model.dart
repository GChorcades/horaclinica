import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<double> listaNumeros = [];
  void addToListaNumeros(double item) => listaNumeros.add(item);
  void removeFromListaNumeros(double item) => listaNumeros.remove(item);
  void removeAtIndexFromListaNumeros(int index) => listaNumeros.removeAt(index);
  void insertAtIndexInListaNumeros(int index, double item) =>
      listaNumeros.insert(index, item);
  void updateListaNumerosAtIndex(int index, Function(double) updateFn) =>
      listaNumeros[index] = updateFn(listaNumeros[index]);

  double? horaClinicaVar;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for horaTrabalhadas widget.
  FocusNode? horaTrabalhadasFocusNode;
  TextEditingController? horaTrabalhadasController;
  String? Function(BuildContext, String?)? horaTrabalhadasControllerValidator;
  // State field(s) for cadeiras widget.
  FocusNode? cadeirasFocusNode;
  TextEditingController? cadeirasController;
  String? Function(BuildContext, String?)? cadeirasControllerValidator;
  // State field(s) for Ferias widget.
  FocusNode? feriasFocusNode;
  TextEditingController? feriasController;
  String? Function(BuildContext, String?)? feriasControllerValidator;
  // State field(s) for desmarcacoes widget.
  FocusNode? desmarcacoesFocusNode;
  TextEditingController? desmarcacoesController;
  String? Function(BuildContext, String?)? desmarcacoesControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Column widget.
  List<CustosVariaveisRecord>? outListaCopy;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    horaTrabalhadasFocusNode?.dispose();
    horaTrabalhadasController?.dispose();

    cadeirasFocusNode?.dispose();
    cadeirasController?.dispose();

    feriasFocusNode?.dispose();
    feriasController?.dispose();

    desmarcacoesFocusNode?.dispose();
    desmarcacoesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
