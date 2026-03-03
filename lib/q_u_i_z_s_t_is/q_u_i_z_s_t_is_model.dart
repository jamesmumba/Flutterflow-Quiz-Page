import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'q_u_i_z_s_t_is_widget.dart' show QUIZSTIsWidget;
import 'package:flutter/material.dart';

class QUIZSTIsModel extends FlutterFlowModel<QUIZSTIsWidget> {
  ///  Local state fields for this page.

  bool showResults = false;

  String? selectedAnswer;

  List<String> optionsList = [];
  void addToOptionsList(String item) => optionsList.add(item);
  void removeFromOptionsList(String item) => optionsList.remove(item);
  void removeAtIndexFromOptionsList(int index) => optionsList.removeAt(index);
  void insertAtIndexInOptionsList(int index, String item) =>
      optionsList.insert(index, item);
  void updateOptionsListAtIndex(int index, Function(String) updateFn) =>
      optionsList[index] = updateFn(optionsList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in QUIZ_STIs widget.
  QuizQuestionsRecord? qq;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for ListView widget.
  ScrollController? listViewController;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
    listViewController?.dispose();
  }
}
