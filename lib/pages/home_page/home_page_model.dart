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
  // State field(s) for Feriados widget.
  FocusNode? feriadosFocusNode;
  TextEditingController? feriadosController;
  String? Function(BuildContext, String?)? feriadosControllerValidator;
  // State field(s) for desmarcacoes widget.
  FocusNode? desmarcacoesFocusNode;
  TextEditingController? desmarcacoesController;
  String? Function(BuildContext, String?)? desmarcacoesControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Column widget.
  List<CustosVariaveisRecord>? outListaCopy;
  // State field(s) for taxadecartao widget.
  FocusNode? taxadecartaoFocusNode;
  TextEditingController? taxadecartaoController;
  String? Function(BuildContext, String?)? taxadecartaoControllerValidator;
  // State field(s) for imposto widget.
  FocusNode? impostoFocusNode;
  TextEditingController? impostoController;
  String? Function(BuildContext, String?)? impostoControllerValidator;
  // State field(s) for parceiros widget.
  FocusNode? parceirosFocusNode;
  TextEditingController? parceirosController;
  String? Function(BuildContext, String?)? parceirosControllerValidator;
  // State field(s) for materias widget.
  FocusNode? materiasFocusNode;
  TextEditingController? materiasController;
  String? Function(BuildContext, String?)? materiasControllerValidator;

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

    feriadosFocusNode?.dispose();
    feriadosController?.dispose();

    desmarcacoesFocusNode?.dispose();
    desmarcacoesController?.dispose();

    taxadecartaoFocusNode?.dispose();
    taxadecartaoController?.dispose();

    impostoFocusNode?.dispose();
    impostoController?.dispose();

    parceirosFocusNode?.dispose();
    parceirosController?.dispose();

    materiasFocusNode?.dispose();
    materiasController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
