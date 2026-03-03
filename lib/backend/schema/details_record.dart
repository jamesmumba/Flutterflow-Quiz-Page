import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetailsRecord extends FirestoreRecord {
  DetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "First_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "Last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "Dob" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "Type_of_Disability" field.
  String? _typeOfDisability;
  String get typeOfDisability => _typeOfDisability ?? '';
  bool hasTypeOfDisability() => _typeOfDisability != null;

  void _initializeFields() {
    _firstName = snapshotData['First_name'] as String?;
    _lastName = snapshotData['Last_name'] as String?;
    _dob = snapshotData['Dob'] as DateTime?;
    _typeOfDisability = snapshotData['Type_of_Disability'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Details');

  static Stream<DetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DetailsRecord.fromSnapshot(s));

  static Future<DetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DetailsRecord.fromSnapshot(s));

  static DetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDetailsRecordData({
  String? firstName,
  String? lastName,
  DateTime? dob,
  String? typeOfDisability,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'First_name': firstName,
      'Last_name': lastName,
      'Dob': dob,
      'Type_of_Disability': typeOfDisability,
    }.withoutNulls,
  );

  return firestoreData;
}

class DetailsRecordDocumentEquality implements Equality<DetailsRecord> {
  const DetailsRecordDocumentEquality();

  @override
  bool equals(DetailsRecord? e1, DetailsRecord? e2) {
    return e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.dob == e2?.dob &&
        e1?.typeOfDisability == e2?.typeOfDisability;
  }

  @override
  int hash(DetailsRecord? e) => const ListEquality()
      .hash([e?.firstName, e?.lastName, e?.dob, e?.typeOfDisability]);

  @override
  bool isValidKey(Object? o) => o is DetailsRecord;
}
