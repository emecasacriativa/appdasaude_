import '/backend/schema/structs/index.dart';
import '/diagnostics/diagnostics_item_history/diagnostics_item_history_widget.dart';
import '/doctor_appointment/book_appointment/appointment_item/appointment_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'my_appointments_widget.dart' show MyAppointmentsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyAppointmentsModel extends FlutterFlowModel<MyAppointmentsWidget> {
  ///  Local state fields for this page.

  bool isUpcoming = true;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
