import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'q_q_item_copy_model.dart';
export 'q_q_item_copy_model.dart';

/// question and answers
class QQItemCopyWidget extends StatefulWidget {
  const QQItemCopyWidget({
    super.key,
    bool? resultShow,
    required this.question,
    required this.optA,
    required this.optB,
    required this.optC,
    required this.optD,
    required this.questionId,
    required this.correctans,
  }) : this.resultShow = resultShow ?? false;

  final bool resultShow;
  final String? question;
  final String? optA;
  final String? optB;
  final String? optC;
  final String? optD;
  final String? questionId;
  final String? correctans;

  @override
  State<QQItemCopyWidget> createState() => _QQItemCopyWidgetState();
}

class _QQItemCopyWidgetState extends State<QQItemCopyWidget> {
  late QQItemCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QQItemCopyModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.addToOptionsList(widget.optA!);
      safeSetState(() {});
      _model.addToOptionsList(widget.optB!);
      safeSetState(() {});
      _model.addToOptionsList(widget.optC!);
      safeSetState(() {});
      _model.addToOptionsList(widget.optD!);
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x1A000000),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.question,
                  'Question',
                ),
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      font: GoogleFonts.interTight(
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleMedium.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleMedium.fontStyle,
                    ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Builder(
                    builder: (context) {
                      final thisOption = _model.optionsList.toList();

                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(thisOption.length,
                              (thisOptionIndex) {
                            final thisOptionItem = thisOption[thisOptionIndex];
                            return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (widget.resultShow == false) {
                                    _model.selectedOption = thisOptionItem;
                                    safeSetState(() {});
                                  }
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: valueOrDefault<Color>(
                                      () {
                                        if (widget.resultShow) {
                                          return () {
                                            if ((thisOptionItem ==
                                                    widget.correctans) &&
                                                (thisOptionItem ==
                                                    _model.selectedOption)) {
                                              return Color(0xFF04A707);
                                            } else if ((thisOptionItem !=
                                                    widget.correctans) &&
                                                (thisOptionItem ==
                                                    _model.selectedOption)) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .error;
                                            } else if ((thisOptionItem ==
                                                    widget.correctans) &&
                                                (thisOptionItem !=
                                                    _model.selectedOption)) {
                                              return Color(0xFF04A707);
                                            } else {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondaryText;
                                            }
                                          }();
                                        } else if (_model.selectedOption ==
                                            thisOptionItem) {
                                          return FlutterFlowTheme.of(context)
                                              .primary;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .primaryBackground;
                                        }
                                      }(),
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      thisOptionItem,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
