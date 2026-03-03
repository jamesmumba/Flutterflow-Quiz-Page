import '/backend/backend.dart';
import '/components/q_q_item_copy_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'q_u_i_z_s_t_is_model.dart';
export 'q_u_i_z_s_t_is_model.dart';

class QUIZSTIsWidget extends StatefulWidget {
  const QUIZSTIsWidget({
    super.key,
    String? quizparameters,
  }) : this.quizparameters = quizparameters ?? '';

  final String quizparameters;

  static String routeName = 'QUIZ_STIs';
  static String routePath = '/qUIZSTIs';

  @override
  State<QUIZSTIsWidget> createState() => _QUIZSTIsWidgetState();
}

class _QUIZSTIsWidgetState extends State<QUIZSTIsWidget> {
  late QUIZSTIsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QUIZSTIsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.qq = await queryQuizQuestionsRecordOnce(
        queryBuilder: (quizQuestionsRecord) => quizQuestionsRecord.where(
          'topic',
          isEqualTo: 'STIs',
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
          ),
          title: Text(
            'Quiz Questions',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 40.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.help_outline_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            controller: _model.columnController,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: StreamBuilder<List<QuizQuestionsRecord>>(
                    stream: queryQuizQuestionsRecord(
                      queryBuilder: (quizQuestionsRecord) => quizQuestionsRecord
                          .where(
                            'topic',
                            isEqualTo: widget.quizparameters,
                          )
                          .orderBy('index'),
                    ),
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
                      List<QuizQuestionsRecord>
                          listViewQuizQuestionsRecordList = snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewQuizQuestionsRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewQuizQuestionsRecord =
                              listViewQuizQuestionsRecordList[listViewIndex];
                          return QQItemCopyWidget(
                            key: Key(
                                'Keyjfl_${listViewIndex}_of_${listViewQuizQuestionsRecordList.length}'),
                            question: listViewQuizQuestionsRecord.question,
                            optA: listViewQuizQuestionsRecord.optionA,
                            optB: listViewQuizQuestionsRecord.optionB,
                            optC: listViewQuizQuestionsRecord.optionC,
                            optD: listViewQuizQuestionsRecord.optionD,
                            questionId:
                                listViewQuizQuestionsRecord.index.toString(),
                            correctans:
                                listViewQuizQuestionsRecord.correctAnswer,
                            resultShow: _model.showResults,
                          );
                        },
                        controller: _model.listViewController,
                      );
                    },
                  ),
                ),
                if (_model.showResults == false)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                    child: StreamBuilder<List<QuizQuestionsRecord>>(
                      stream: queryQuizQuestionsRecord(
                        queryBuilder: (quizQuestionsRecord) =>
                            quizQuestionsRecord.where(
                          'topic',
                          isEqualTo: widget.quizparameters,
                        ),
                      ),
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
                        List<QuizQuestionsRecord>
                            buttonQuizQuestionsRecordList = snapshot.data!;

                        return FFButtonWidget(
                          onPressed: () async {
                            _model.showResults = true;
                            safeSetState(() {});
                            await _model.columnController?.animateTo(
                              0,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.ease,
                            );
                          },
                          text: 'SUBMIT',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        );
                      },
                    ),
                  ),
                if (_model.showResults == true)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                    child: StreamBuilder<List<QuizQuestionsRecord>>(
                      stream: queryQuizQuestionsRecord(
                        queryBuilder: (quizQuestionsRecord) =>
                            quizQuestionsRecord.where(
                          'topic',
                          isEqualTo: widget.quizparameters,
                        ),
                      ),
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
                        List<QuizQuestionsRecord>
                            buttonQuizQuestionsRecordList = snapshot.data!;

                        return FFButtonWidget(
                          onPressed: () async {},
                          text: 'HOME',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
