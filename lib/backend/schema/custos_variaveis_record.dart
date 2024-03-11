import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustosVariaveisRecord extends FirestoreRecord {
  CustosVariaveisRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('custos_variaveis');

  static Stream<CustosVariaveisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CustosVariaveisRecord.fromSnapshot(s));

  static Future<CustosVariaveisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CustosVariaveisRecord.fromSnapshot(s));

  static CustosVariaveisRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CustosVariaveisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CustosVariaveisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CustosVariaveisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CustosVariaveisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CustosVariaveisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCustosVariaveisRecordData({
  String? name,
  double? amount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'amount': amount,
    }.withoutNulls,
  );

  return firestoreData;
}

class CustosVariaveisRecordDocumentEquality
    implements Equality<CustosVariaveisRecord> {
  const CustosVariaveisRecordDocumentEquality();

  @override
  bool equals(CustosVariaveisRecord? e1, CustosVariaveisRecord? e2) {
    return e1?.name == e2?.name && e1?.amount == e2?.amount;
  }

  @override
  int hash(CustosVariaveisRecord? e) =>
      const ListEquality().hash([e?.name, e?.amount]);

  @override
  bool isValidKey(Object? o) => o is CustosVariaveisRecord;
}
