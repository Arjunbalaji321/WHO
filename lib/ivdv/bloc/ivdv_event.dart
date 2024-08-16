// form_event.dart
abstract class CaseIdentificationEvent {}

class UpdateField extends CaseIdentificationEvent {
  final String fieldName;
  final String fieldValue;

  UpdateField(this.fieldName, this.fieldValue);
}

class SubmitForm extends CaseIdentificationEvent {}
