import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewUserRecord extends FirestoreRecord {
  NewUserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "Confirm_Password" field.
  String? _confirmPassword;
  String get confirmPassword => _confirmPassword ?? '';
  bool hasConfirmPassword() => _confirmPassword != null;

  // "DOB" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "Type_of_Disability" field.
  String? _typeOfDisability;
  String get typeOfDisability => _typeOfDisability ?? '';
  bool hasTypeOfDisability() => _typeOfDisability != null;

  // "firstN" field.
  String? _firstN;
  String get firstN => _firstN ?? '';
  bool hasFirstN() => _firstN != null;

  // "LastN" field.
  String? _lastN;
  String get lastN => _lastN ?? '';
  bool hasLastN() => _lastN != null;

  // "Gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _password = snapshotData['Password'] as String?;
    _confirmPassword = snapshotData['Confirm_Password'] as String?;
    _dob = snapshotData['DOB'] as DateTime?;
    _typeOfDisability = snapshotData['Type_of_Disability'] as String?;
    _firstN = snapshotData['firstN'] as String?;
    _lastN = snapshotData['LastN'] as String?;
    _gender = snapshotData['Gender'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('New_User');

  static Stream<NewUserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewUserRecord.fromSnapshot(s));

  static Future<NewUserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewUserRecord.fromSnapshot(s));

  static NewUserRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NewUserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewUserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewUserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewUserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewUserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? password,
  String? confirmPassword,
  DateTime? dob,
  String? typeOfDisability,
  String? firstN,
  String? lastN,
  String? gender,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Password': password,
      'Confirm_Password': confirmPassword,
      'DOB': dob,
      'Type_of_Disability': typeOfDisability,
      'firstN': firstN,
      'LastN': lastN,
      'Gender': gender,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewUserRecordDocumentEquality implements Equality<NewUserRecord> {
  const NewUserRecordDocumentEquality();

  @override
  bool equals(NewUserRecord? e1, NewUserRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.password == e2?.password &&
        e1?.confirmPassword == e2?.confirmPassword &&
        e1?.dob == e2?.dob &&
        e1?.typeOfDisability == e2?.typeOfDisability &&
        e1?.firstN == e2?.firstN &&
        e1?.lastN == e2?.lastN &&
        e1?.gender == e2?.gender;
  }

  @override
  int hash(NewUserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.password,
        e?.confirmPassword,
        e?.dob,
        e?.typeOfDisability,
        e?.firstN,
        e?.lastN,
        e?.gender
      ]);

  @override
  bool isValidKey(Object? o) => o is NewUserRecord;
}
