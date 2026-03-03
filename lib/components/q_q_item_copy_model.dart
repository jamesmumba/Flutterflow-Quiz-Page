import '/flutter_flow/flutter_flow_util.dart';
import 'q_q_item_copy_widget.dart' show QQItemCopyWidget;
import 'package:flutter/material.dart';

class QQItemCopyModel extends FlutterFlowModel<QQItemCopyWidget> {
  ///  Local state fields for this component.

  String? selectedOption = '';

  List<String> optionsList = [];
  void addToOptionsList(String item) => optionsList.add(item);
  void removeFromOptionsList(String item) => optionsList.remove(item);
  void removeAtIndexFromOptionsList(int index) => optionsList.removeAt(index);
  void insertAtIndexInOptionsList(int index, String item) =>
      optionsList.insert(index, item);
  void updateOptionsListAtIndex(int index, Function(String) updateFn) =>
      optionsList[index] = updateFn(optionsList[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
