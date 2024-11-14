import '/backend/schema/structs/index.dart';
import '/components/category_item_widget.dart';
import '/components/hospital_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'diagnostics_model.dart';
export 'diagnostics_model.dart';

class DiagnosticsWidget extends StatefulWidget {
  const DiagnosticsWidget({super.key});

  @override
  State<DiagnosticsWidget> createState() => _DiagnosticsWidgetState();
}

class _DiagnosticsWidgetState extends State<DiagnosticsWidget> {
  late DiagnosticsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiagnosticsModel());

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
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlutterFlowIconButton(
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
                  Expanded(
                    child: Text(
                      'Diagnostics',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Color(0xFFE4E5E7),
                    borderRadius: 100.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      FFIcons.ksearchOutline,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 22.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ],
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8FC),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 12.0, 20.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/Frame_34630.png',
                                  ).image,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 26.0, 0.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Services Up To',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Nunito',
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 12.0),
                                        child: Text(
                                          '30% OFF',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Nunito',
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'View More',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Nunito',
                                              color: Color(0xFF0F133B),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 20.0, 12.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('allCategories');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Categories',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'View All',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.categoryItemModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryItemWidget(
                                    categoryName: 'Heart',
                                    categoryColor:
                                        FlutterFlowTheme.of(context).primary,
                                    icon: Icon(
                                      Icons.heart_broken,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 42.0,
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.categoryItemModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryItemWidget(
                                    categoryName: 'Lungs',
                                    categoryColor: Color(0xFFFBA554),
                                    icon: FaIcon(
                                      FontAwesomeIcons.lungs,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 42.0,
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.categoryItemModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryItemWidget(
                                    categoryName: 'Dental',
                                    categoryColor: Color(0xFF44E1C4),
                                    icon: FaIcon(
                                      FontAwesomeIcons.tooth,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 42.0,
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.categoryItemModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryItemWidget(
                                    categoryName: 'Eyes',
                                    categoryColor: Color(0xFFF67F6B),
                                    icon: FaIcon(
                                      FontAwesomeIcons.eye,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 42.0,
                                    ),
                                  ),
                                ),
                              ]
                                  .divide(SizedBox(width: 12.0))
                                  .addToStart(SizedBox(width: 20.0))
                                  .addToEnd(SizedBox(width: 20.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 20.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('PopularDoctor');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Nearby Diagnostics',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'View All',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 245.0,
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final hospital =
                                      FFAppState().hospitals.toList();

                                  return ListView.separated(
                                    padding: EdgeInsets.fromLTRB(
                                      20.0,
                                      0,
                                      20.0,
                                      0,
                                    ),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: hospital.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(width: 16.0),
                                    itemBuilder: (context, hospitalIndex) {
                                      final hospitalItem =
                                          hospital[hospitalIndex];
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
                                                hospitalItem.image,
                                                ParamType.String,
                                              ),
                                              'name': serializeParam(
                                                hospitalItem.name,
                                                ParamType.String,
                                              ),
                                              'location': serializeParam(
                                                hospitalItem.location,
                                                ParamType.String,
                                              ),
                                              'type': serializeParam(
                                                'Diagnostics',
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: HospitalItemWidget(
                                          key: Key(
                                              'Keye5d_${hospitalIndex}_of_${hospital.length}'),
                                          name: hospitalItem.name,
                                          location: hospitalItem.location,
                                          rating: hospitalItem.rating,
                                          image: hospitalItem.image,
                                          btnAction: () async {
                                            context.pushNamed(
                                              'PharmacyDiagnosticDetails',
                                              queryParameters: {
                                                'image': serializeParam(
                                                  hospitalItem.image,
                                                  ParamType.String,
                                                ),
                                                'name': serializeParam(
                                                  hospitalItem.name,
                                                  ParamType.String,
                                                ),
                                                'location': serializeParam(
                                                  hospitalItem.location,
                                                  ParamType.String,
                                                ),
                                                'type': serializeParam(
                                                  'Diagnostics',
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 20.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('allNearbyHospital');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Popular Diagnostics',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'View All',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 245.0,
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final hospital =
                                      FFAppState().hospitals.toList();

                                  return ListView.separated(
                                    padding: EdgeInsets.fromLTRB(
                                      20.0,
                                      0,
                                      20.0,
                                      0,
                                    ),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: hospital.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(width: 16.0),
                                    itemBuilder: (context, hospitalIndex) {
                                      final hospitalItem =
                                          hospital[hospitalIndex];
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
                                                hospitalItem.image,
                                                ParamType.String,
                                              ),
                                              'name': serializeParam(
                                                hospitalItem.name,
                                                ParamType.String,
                                              ),
                                              'location': serializeParam(
                                                hospitalItem.location,
                                                ParamType.String,
                                              ),
                                              'type': serializeParam(
                                                'Diagnostics',
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: HospitalItemWidget(
                                          key: Key(
                                              'Keynvm_${hospitalIndex}_of_${hospital.length}'),
                                          name: hospitalItem.name,
                                          location: hospitalItem.location,
                                          rating: hospitalItem.rating,
                                          image: hospitalItem.image,
                                          btnAction: () async {
                                            context.pushNamed(
                                              'PharmacyDiagnosticDetails',
                                              queryParameters: {
                                                'image': serializeParam(
                                                  hospitalItem.image,
                                                  ParamType.String,
                                                ),
                                                'name': serializeParam(
                                                  hospitalItem.name,
                                                  ParamType.String,
                                                ),
                                                'location': serializeParam(
                                                  hospitalItem.location,
                                                  ParamType.String,
                                                ),
                                                'type': serializeParam(
                                                  'Diagnostics',
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
