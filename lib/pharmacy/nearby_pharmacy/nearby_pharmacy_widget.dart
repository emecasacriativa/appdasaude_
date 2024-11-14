import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pharmacy/pharmacy_item/pharmacy_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nearby_pharmacy_model.dart';
export 'nearby_pharmacy_model.dart';

class NearbyPharmacyWidget extends StatefulWidget {
  const NearbyPharmacyWidget({super.key});

  @override
  State<NearbyPharmacyWidget> createState() => _NearbyPharmacyWidgetState();
}

class _NearbyPharmacyWidgetState extends State<NearbyPharmacyWidget> {
  late NearbyPharmacyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NearbyPharmacyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.chevron_left,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Nearby Pharmacy',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Nunito',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Builder(
              builder: (context) {
                final pharmacy = FFAppState().pharmacies.toList();

                return GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0,
                    childAspectRatio: 0.6,
                  ),
                  scrollDirection: Axis.vertical,
                  itemCount: pharmacy.length,
                  itemBuilder: (context, pharmacyIndex) {
                    final pharmacyItem = pharmacy[pharmacyIndex];
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'PharmacyDiagnosticDetails',
                          queryParameters: {
                            'image': serializeParam(
                              pharmacyItem.image,
                              ParamType.String,
                            ),
                            'name': serializeParam(
                              pharmacyItem.name,
                              ParamType.String,
                            ),
                            'location': serializeParam(
                              pharmacyItem.location,
                              ParamType.String,
                            ),
                            'type': serializeParam(
                              'Pharmacy',
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: PharmacyItemWidget(
                        key: Key(
                            'Keywrb_${pharmacyIndex}_of_${pharmacy.length}'),
                        photo: pharmacyItem.image,
                        name: pharmacyItem.name,
                        location: pharmacyItem.location,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
