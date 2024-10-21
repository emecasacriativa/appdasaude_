import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'book_appointment_diagnostics_widget.dart'
    show BookAppointmentDiagnosticsWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookAppointmentDiagnosticsModel
    extends FlutterFlowModel<BookAppointmentDiagnosticsWidget> {
  ///  Local state fields for this page.

  bool isOnline = true;

  DateTime? selectedDay;

  String timeOfTheDay = '';

  DateTime? timeSelected;

  String typeOfService = '';

  bool isChecked = true;

  String? selectedDoctor;

  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
