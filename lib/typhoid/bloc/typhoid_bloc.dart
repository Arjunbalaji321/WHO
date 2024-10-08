import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formhospi/typhoid/bloc/typhoid_event.dart';
import 'package:formhospi/typhoid/bloc/typhoid_state.dart';
import 'dart:convert';

class TyphoidBloc extends Bloc<TyphoidEvent, TyphoidState> {
  TyphoidBloc() : super(TyphoidState(fields: {})) {
    on<UpdateField>((event, emit) {
      final updatedFields = Map<String, dynamic>.from(state.fields)
        ..[event.fieldName] = event.fieldValue;
      emit(state.copyWith(updatedFields: updatedFields));
    });

    on<SubmitForm>((event, emit) {
      _printAllFields(state.fields);
    });
  }

  void _printAllFields(Map<String, dynamic> fields) {
    print("Current form state:");
    String jsonFields = jsonEncode(fields);
    print(jsonFields);
  }
}
