import '/backend/schema/structs/index.dart';
import '/components/category_item_widget.dart';
import '/components/hospital_item_widget.dart';
import '/components/popular_doctor_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'doctor_appointment_widget.dart' show DoctorAppointmentWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DoctorAppointmentModel extends FlutterFlowModel<DoctorAppointmentWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for CategoryItem component.
  late CategoryItemModel categoryItemModel1;
  // Model for CategoryItem component.
  late CategoryItemModel categoryItemModel2;
  // Model for CategoryItem component.
  late CategoryItemModel categoryItemModel3;
  // Model for CategoryItem component.
  late CategoryItemModel categoryItemModel4;

  @override
  void initState(BuildContext context) {
    categoryItemModel1 = createModel(context, () => CategoryItemModel());
    categoryItemModel2 = createModel(context, () => CategoryItemModel());
    categoryItemModel3 = createModel(context, () => CategoryItemModel());
    categoryItemModel4 = createModel(context, () => CategoryItemModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    categoryItemModel1.dispose();
    categoryItemModel2.dispose();
    categoryItemModel3.dispose();
    categoryItemModel4.dispose();
  }
}
