import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PredictionRecord extends FirestoreRecord {
  PredictionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prediction');

  static Stream<PredictionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PredictionRecord.fromSnapshot(s));

  static Future<PredictionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PredictionRecord.fromSnapshot(s));

  static PredictionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PredictionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PredictionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PredictionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PredictionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PredictionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPredictionRecordData({
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class PredictionRecordDocumentEquality implements Equality<PredictionRecord> {
  const PredictionRecordDocumentEquality();

  @override
  bool equals(PredictionRecord? e1, PredictionRecord? e2) {
    return e1?.image == e2?.image;
  }

  @override
  int hash(PredictionRecord? e) => const ListEquality().hash([e?.image]);

  @override
  bool isValidKey(Object? o) => o is PredictionRecord;
}
