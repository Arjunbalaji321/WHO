import 'package:equatable/equatable.dart';

class CaseIdentificationState extends Equatable {
  final Map<String, String> fields;

  CaseIdentificationState({required this.fields});

  CaseIdentificationState copyWith(
      {required Map<String, String> updatedFields}) {
    return CaseIdentificationState(fields: {...fields, ...updatedFields});
  }
  @override
  List<Object> get props => [
        fields,
      ];
}
