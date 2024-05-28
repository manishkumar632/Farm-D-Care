// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends FFFirebaseStruct {
  UsersStruct({
    List<String>? email,
    List<String>? password,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _email = email,
        _password = password,
        super(firestoreUtilData);

  // "email" field.
  List<String>? _email;
  List<String> get email => _email ?? const [];
  set email(List<String>? val) => _email = val;
  void updateEmail(Function(List<String>) updateFn) => updateFn(_email ??= []);
  bool hasEmail() => _email != null;

  // "password" field.
  List<String>? _password;
  List<String> get password => _password ?? const [];
  set password(List<String>? val) => _password = val;
  void updatePassword(Function(List<String>) updateFn) =>
      updateFn(_password ??= []);
  bool hasPassword() => _password != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        email: getDataList(data['email']),
        password: getDataList(data['password']),
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UsersStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'password': _password,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
          true,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        email: deserializeParam<String>(
          data['email'],
          ParamType.String,
          true,
        ),
        password: deserializeParam<String>(
          data['password'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UsersStruct &&
        listEquality.equals(email, other.email) &&
        listEquality.equals(password, other.password);
  }

  @override
  int get hashCode => const ListEquality().hash([email, password]);
}

UsersStruct createUsersStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UsersStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UsersStruct? updateUsersStruct(
  UsersStruct? users, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    users
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUsersStructData(
  Map<String, dynamic> firestoreData,
  UsersStruct? users,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (users == null) {
    return;
  }
  if (users.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && users.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final usersData = getUsersFirestoreData(users, forFieldValue);
  final nestedData = usersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = users.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUsersFirestoreData(
  UsersStruct? users, [
  bool forFieldValue = false,
]) {
  if (users == null) {
    return {};
  }
  final firestoreData = mapToFirestore(users.toMap());

  // Add any Firestore field values
  users.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUsersListFirestoreData(
  List<UsersStruct>? userss,
) =>
    userss?.map((e) => getUsersFirestoreData(e, true)).toList() ?? [];
