import '/flutter_flow/flutter_flow_util.dart';
import 'prolabore_widget.dart' show ProlaboreWidget;
import 'package:flutter/material.dart';

class ProlaboreModel extends FlutterFlowModel<ProlaboreWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for socio1 widget.
  FocusNode? socio1FocusNode;
  TextEditingController? socio1Controller;
  String? Function(BuildContext, String?)? socio1ControllerValidator;
  // State field(s) for socio2 widget.
  FocusNode? socio2FocusNode;
  TextEditingController? socio2Controller;
  String? Function(BuildContext, String?)? socio2ControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    socio1FocusNode?.dispose();
    socio1Controller?.dispose();

    socio2FocusNode?.dispose();
    socio2Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
