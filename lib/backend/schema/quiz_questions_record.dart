import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizQuestionsRecord extends FirestoreRecord {
  QuizQuestionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "option_A" field.
  String? _optionA;
  String get optionA => _optionA ?? '';
  bool hasOptionA() => _optionA != null;

  // "option_B" field.
  String? _optionB;
  String get optionB => _optionB ?? '';
  bool hasOptionB() => _optionB != null;

  // "option_C" field.
  String? _optionC;
  String get optionC => _optionC ?? '';
  bool hasOptionC() => _optionC != null;

  // "option_D" field.
  String? _optionD;
  String get optionD => _optionD ?? '';
  bool hasOptionD() => _optionD != null;

  // "correct_answer" field.
  String? _correctAnswer;
  String get correctAnswer => _correctAnswer ?? '';
  bool hasCorrectAnswer() => _correctAnswer != null;

  // "topic" field.
  String? _topic;
  String get topic => _topic ?? '';
  bool hasTopic() => _topic != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  void _initializeFields() {
    _question = snapshotData['Question'] as String?;
    _optionA = snapshotData['option_A'] as String?;
    _optionB = snapshotData['option_B'] as String?;
    _optionC = snapshotData['option_C'] as String?;
    _optionD = snapshotData['option_D'] as String?;
    _correctAnswer = snapshotData['correct_answer'] as String?;
    _topic = snapshotData['topic'] as String?;
    _index = castToType<int>(snapshotData['index']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Quiz_Questions');

  static Stream<QuizQuestionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizQuestionsRecord.fromSnapshot(s));

  static Future<QuizQuestionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizQuestionsRecord.fromSnapshot(s));

  static QuizQuestionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuizQuestionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizQuestionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizQuestionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizQuestionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizQuestionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizQuestionsRecordData({
  String? question,
  String? optionA,
  String? optionB,
  String? optionC,
  String? optionD,
  String? correctAnswer,
  String? topic,
  int? index,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Question': question,
      'option_A': optionA,
      'option_B': optionB,
      'option_C': optionC,
      'option_D': optionD,
      'correct_answer': correctAnswer,
      'topic': topic,
      'index': index,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuizQuestionsRecordDocumentEquality
    implements Equality<QuizQuestionsRecord> {
  const QuizQuestionsRecordDocumentEquality();

  @override
  bool equals(QuizQuestionsRecord? e1, QuizQuestionsRecord? e2) {
    return e1?.question == e2?.question &&
        e1?.optionA == e2?.optionA &&
        e1?.optionB == e2?.optionB &&
        e1?.optionC == e2?.optionC &&
        e1?.optionD == e2?.optionD &&
        e1?.correctAnswer == e2?.correctAnswer &&
        e1?.topic == e2?.topic &&
        e1?.index == e2?.index;
  }

  @override
  int hash(QuizQuestionsRecord? e) => const ListEquality().hash([
        e?.question,
        e?.optionA,
        e?.optionB,
        e?.optionC,
        e?.optionD,
        e?.correctAnswer,
        e?.topic,
        e?.index
      ]);

  @override
  bool isValidKey(Object? o) => o is QuizQuestionsRecord;
}
