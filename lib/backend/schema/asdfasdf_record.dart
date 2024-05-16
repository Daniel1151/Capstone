import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AsdfasdfRecord extends FirestoreRecord {
  AsdfasdfRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "UserImage" field.
  String? _userImage;
  String get userImage => _userImage ?? '';
  bool hasUserImage() => _userImage != null;

  void _initializeFields() {
    _userImage = snapshotData['UserImage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('asdfasdf');

  static Stream<AsdfasdfRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AsdfasdfRecord.fromSnapshot(s));

  static Future<AsdfasdfRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AsdfasdfRecord.fromSnapshot(s));

  static AsdfasdfRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AsdfasdfRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AsdfasdfRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AsdfasdfRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AsdfasdfRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AsdfasdfRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAsdfasdfRecordData({
  String? userImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UserImage': userImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class AsdfasdfRecordDocumentEquality implements Equality<AsdfasdfRecord> {
  const AsdfasdfRecordDocumentEquality();

  @override
  bool equals(AsdfasdfRecord? e1, AsdfasdfRecord? e2) {
    return e1?.userImage == e2?.userImage;
  }

  @override
  int hash(AsdfasdfRecord? e) => const ListEquality().hash([e?.userImage]);

  @override
  bool isValidKey(Object? o) => o is AsdfasdfRecord;
}
