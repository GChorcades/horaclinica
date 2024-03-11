import '/backend/backend.dart';
import '/components/item_lista_f_b_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'custos_clinica_model.dart';
export 'custos_clinica_model.dart';

class CustosClinicaWidget extends StatefulWidget {
  const CustosClinicaWidget({super.key});

  @override
  State<CustosClinicaWidget> createState() => _CustosClinicaWidgetState();
}

class _CustosClinicaWidgetState extends State<CustosClinicaWidget> {
  late CustosClinicaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustosClinicaModel());

    _model.despesnaNomeController ??= TextEditingController();
    _model.despesnaNomeFocusNode ??= FocusNode();

    _model.despesaValorController ??= TextEditingController();
    _model.despesaValorFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 600.0,
      constraints: const BoxConstraints(
        maxWidth: 970.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                  child: Text(
                    'CUSTOS DA CLÍNICA',
                    style: FlutterFlowTheme.of(context).headlineSmall,
                  ),
                ),
                StreamBuilder<List<CustosVariaveisRecord>>(
                  stream: queryCustosVariaveisRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<CustosVariaveisRecord>
                        listViewCustosVariaveisRecordList = snapshot.data!;
                    return ListView.separated(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        16.0,
                        0,
                        16.0,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewCustosVariaveisRecordList.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 8.0),
                      itemBuilder: (context, listViewIndex) {
                        final listViewCustosVariaveisRecord =
                            listViewCustosVariaveisRecordList[listViewIndex];
                        return Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 570.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context).alternate,
                                offset: const Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              listViewCustosVariaveisRecord
                                                  .name,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  formatNumber(
                                                    listViewCustosVariaveisRecord
                                                        .amount,
                                                    formatType:
                                                        FormatType.decimal,
                                                    decimalType: DecimalType
                                                        .commaDecimal,
                                                    currency: 'R\$ ',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 14.0,
                                                      ),
                                                ),
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  borderRadius: 12.0,
                                                  borderWidth: 0.0,
                                                  buttonSize: 40.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  icon: Icon(
                                                    Icons.edit,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 22.0,
                                                  ),
                                                  onPressed: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              ItemListaFBWidget(
                                                            despesa:
                                                                listViewCustosVariaveisRecord
                                                                    .name,
                                                            valor:
                                                                listViewCustosVariaveisRecord
                                                                    .amount,
                                                            ref:
                                                                listViewCustosVariaveisRecord
                                                                    .reference
                                                                    .id,
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));

                                                    await listViewCustosVariaveisRecord
                                                        .reference
                                                        .delete();
                                                    _model.outListanalistaEdit =
                                                        await queryCustosVariaveisRecordOnce();
                                                    setState(() {
                                                      FFAppState().numeros = _model
                                                          .outListanalistaEdit!
                                                          .map((e) => e.amount)
                                                          .toList()
                                                          .cast<double>();
                                                    });
                                                    setState(() {
                                                      FFAppState()
                                                              .totalClinica =
                                                          functions.calcularLista(
                                                              _model
                                                                  .outListanalistaEdit
                                                                  ?.map((e) =>
                                                                      e.amount)
                                                                  .toList()
                                                                  .toList())!;
                                                    });

                                                    setState(() {});
                                                  },
                                                ),
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  borderRadius: 12.0,
                                                  borderWidth: 0.0,
                                                  buttonSize: 40.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  icon: Icon(
                                                    Icons
                                                        .delete_outline_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 22.0,
                                                  ),
                                                  onPressed: () async {
                                                    await listViewCustosVariaveisRecord
                                                        .reference
                                                        .delete();
                                                    _model.outListanalista =
                                                        await queryCustosVariaveisRecordOnce();
                                                    setState(() {
                                                      FFAppState().numeros =
                                                          _model
                                                              .outListanalista!
                                                              .map((e) =>
                                                                  e.amount)
                                                              .toList()
                                                              .cast<double>();
                                                    });
                                                    setState(() {
                                                      FFAppState()
                                                              .totalClinica =
                                                          functions.calcularLista(
                                                              _model
                                                                  .outListanalista
                                                                  ?.map((e) =>
                                                                      e.amount)
                                                                  .toList()
                                                                  .toList())!;
                                                    });

                                                    setState(() {});
                                                  },
                                                ),
                                              ]
                                                  .divide(const SizedBox(width: 10.0))
                                                  .addToStart(
                                                      const SizedBox(width: 10.0)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    Text(
                      formatNumber(
                        functions.calcularLista(FFAppState().numeros.toList()),
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.commaDecimal,
                        currency: 'R\$ ',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nova Despesa',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller: _model.despesnaNomeController,
                              focusNode: _model.despesnaNomeFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.despesnaNomeController',
                                const Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Despesa ',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                                suffixIcon: _model
                                        .despesnaNomeController!.text.isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model.despesnaNomeController
                                              ?.clear();
                                          setState(() {});
                                        },
                                        child: const Icon(
                                          Icons.clear,
                                          size: 12.0,
                                        ),
                                      )
                                    : null,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.despesnaNomeControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller: _model.despesaValorController,
                              focusNode: _model.despesaValorFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.despesaValorController',
                                const Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Valor ',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                                suffixIcon: _model
                                        .despesaValorController!.text.isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model.despesaValorController
                                              ?.clear();
                                          setState(() {});
                                        },
                                        child: const Icon(
                                          Icons.clear,
                                          size: 12.0,
                                        ),
                                      )
                                    : null,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.despesaValorControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 12.0)),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await CustosVariaveisRecord.collection
                              .doc()
                              .set(createCustosVariaveisRecordData(
                                name: _model.despesnaNomeController.text,
                                amount: double.tryParse(
                                    _model.despesaValorController.text),
                              ));
                          _model.outLista =
                              await queryCustosVariaveisRecordOnce();
                          setState(() {
                            FFAppState().numeros = _model.outLista!
                                .map((e) => e.amount)
                                .toList()
                                .cast<double>();
                          });
                          setState(() {
                            FFAppState().totalClinica = functions.calcularLista(
                                _model.outLista
                                    ?.map((e) => e.amount)
                                    .toList()
                                    .toList())!;
                          });
                          setState(() {
                            _model.despesnaNomeController?.clear();
                            _model.despesaValorController?.clear();
                          });

                          setState(() {});
                        },
                        text: 'Adicionar Despesa',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
