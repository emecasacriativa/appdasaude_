import '/components/category_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_categories_model.dart';
export 'all_categories_model.dart';

class AllCategoriesWidget extends StatefulWidget {
  const AllCategoriesWidget({super.key});

  @override
  State<AllCategoriesWidget> createState() => _AllCategoriesWidgetState();
}

class _AllCategoriesWidgetState extends State<AllCategoriesWidget> {
  late AllCategoriesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllCategoriesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            buttonSize: 54.0,
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
            FFLocalizations.of(context).getText(
              '2f3w6etp' /* Categories */,
            ),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 0.9,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Category',
                                    queryParameters: {
                                      'category': serializeParam(
                                        'Heart',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
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
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Category',
                                    queryParameters: {
                                      'category': serializeParam(
                                        'Lungs',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryItemModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryItemWidget(
                                    categoryName: 'Lungs',
                                    categoryColor: Color(0xFFFBA554),
                                    icon: FaIcon(
                                      FontAwesomeIcons.lungs,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 38.0,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Category',
                                    queryParameters: {
                                      'category': serializeParam(
                                        'Dental',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryItemModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryItemWidget(
                                    categoryName: 'Dental',
                                    categoryColor: Color(0xFF44E1C4),
                                    icon: FaIcon(
                                      FontAwesomeIcons.tooth,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 38.0,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Category',
                                    queryParameters: {
                                      'category': serializeParam(
                                        'Eyes',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryItemModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CategoryItemWidget(
                                    categoryName: 'Eyes',
                                    categoryColor: Color(0xFFF67F6B),
                                    icon: FaIcon(
                                      FontAwesomeIcons.eye,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 38.0,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Category',
                                    queryParameters: {
                                      'category': serializeParam(
                                        'Lungs',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryItemModel5,
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
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Category',
                                    queryParameters: {
                                      'category': serializeParam(
                                        'Dental',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryItemModel6,
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
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Category',
                                    queryParameters: {
                                      'category': serializeParam(
                                        'Eyes',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryItemModel7,
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
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Category',
                                    queryParameters: {
                                      'category': serializeParam(
                                        'Heart',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryItemModel8,
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
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Category',
                                    queryParameters: {
                                      'category': serializeParam(
                                        'Heart',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryItemModel9,
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
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Category',
                                    queryParameters: {
                                      'category': serializeParam(
                                        'Dental',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryItemModel10,
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
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Category',
                                    queryParameters: {
                                      'category': serializeParam(
                                        'Lungs',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryItemModel11,
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
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Category',
                                    queryParameters: {
                                      'category': serializeParam(
                                        'Eyes',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.categoryItemModel12,
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
                              ),
                            ],
                          ),
                        ),
                      ],
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
