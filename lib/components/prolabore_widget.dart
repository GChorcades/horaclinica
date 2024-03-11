import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'prolabore_model.dart';
export 'prolabore_model.dart';

class ProlaboreWidget extends StatefulWidget {
  const ProlaboreWidget({super.key});

  @override
  State<ProlaboreWidget> createState() => _ProlaboreWidgetState();
}

class _ProlaboreWidgetState extends State<ProlaboreWidget> {
  late ProlaboreModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProlaboreModel());

    _model.socio1Controller ??= TextEditingController();
    _model.socio1FocusNode ??= FocusNode();
    _model.socio1FocusNode!.addListener(() => setState(() {}));
    _model.socio2Controller ??= TextEditingController();
    _model.socio2FocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'PRÓ-LABORE',
              style: FlutterFlowTheme.of(context).titleLarge,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: TextFormField(
                controller: _model.socio1Controller,
                focusNode: _model.socio1FocusNode,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.socio1Controller',
                  const Duration(milliseconds: 200),
                  () async {
                    setState(() {
                      FFAppState().totalProlabore =
                          double.parse(_model.socio1Controller.text);
                    });
                  },
                ),
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Sócio 1',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium,
                  hintStyle: FlutterFlowTheme.of(context).labelMedium,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  suffixIcon: _model.socio1Controller!.text.isNotEmpty
                      ? InkWell(
                          onTap: () async {
                            _model.socio1Controller?.clear();
                            setState(() {
                              FFAppState().totalProlabore =
                                  double.parse(_model.socio1Controller.text);
                            });
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.clear,
                            size: 22,
                          ),
                        )
                      : null,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                keyboardType: TextInputType.number,
                validator:
                    _model.socio1ControllerValidator.asValidator(context),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: TextFormField(
                controller: _model.socio2Controller,
                focusNode: _model.socio2FocusNode,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.socio2Controller',
                  const Duration(milliseconds: 200),
                  () => setState(() {}),
                ),
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Sócio 2 ',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium,
                  hintStyle: FlutterFlowTheme.of(context).labelMedium,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  suffixIcon: _model.socio2Controller!.text.isNotEmpty
                      ? InkWell(
                          onTap: () async {
                            _model.socio2Controller?.clear();
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.clear,
                            size: 22,
                          ),
                        )
                      : null,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                keyboardType: TextInputType.number,
                validator:
                    _model.socio2ControllerValidator.asValidator(context),
              ),
            ),
            Text(
              'TOTAL',
              style: FlutterFlowTheme.of(context).labelLarge,
            ),
            Text(
              formatNumber(
                functions.somaProlaboreSocios(
                    double.tryParse(_model.socio1Controller.text),
                    double.tryParse(_model.socio2Controller.text)),
                formatType: FormatType.decimal,
                decimalType: DecimalType.commaDecimal,
                currency: 'R\$ ',
              ),
              style: FlutterFlowTheme.of(context).titleLarge,
            ),
            FFButtonWidget(
              onPressed: () async {
                setState(() {
                  FFAppState().totalProlabore = functions.somaProlaboreSocios(
                      double.tryParse(_model.socio1Controller.text),
                      double.tryParse(_model.socio2Controller.text))!;
                });
                Navigator.pop(context);
              },
              text: 'Salvar',
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Colors.white,
                    ),
                elevation: 3.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ].divide(const SizedBox(height: 12.0)).around(const SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
