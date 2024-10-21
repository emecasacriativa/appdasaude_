import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'congratulations_model.dart';
export 'congratulations_model.dart';

class CongratulationsWidget extends StatefulWidget {
  const CongratulationsWidget({
    super.key,
    required this.typeOfService,
  });

  final String? typeOfService;

  @override
  State<CongratulationsWidget> createState() => _CongratulationsWidgetState();
}

class _CongratulationsWidgetState extends State<CongratulationsWidget> {
  late CongratulationsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CongratulationsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(26.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/congrats.png',
                  width: 124.0,
                  height: 109.0,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'xyxn4exj' /* Congratulation! */,
                ),
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily: 'Nunito',
                      fontSize: 28.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              RichText(
                textScaler: MediaQuery.of(context).textScaler,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: FFLocalizations.of(context).getText(
                        'yjknbl7d' /* Your appointment booking compl... */,
                      ),
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(
                      text: FFLocalizations.of(context).getText(
                        '2ynfqy21' /* Dr. Josiah Toor  */,
                      ),
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: FFLocalizations.of(context).getText(
                        'gp5wxhkg' /* will video call you soon. */,
                      ),
                      style: TextStyle(),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Nunito',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.person,
                          color: Color(0xFFFE4A46),
                          size: 20.0,
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'l66ic36f' /* Guy Hawkins */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.wallet,
                          color: Color(0xFF4AAF4F),
                          size: 20.0,
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'erl1gi5a' /* $15 USD */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 20.0,
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'khs8d3xv' /* 12 July 2022 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.access_time_filled,
                        color: Color(0xFFFEBA0C),
                        size: 20.0,
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'eu1arv3a' /* 01:00 PM */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 15.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'MyAppointments',
                      queryParameters: {
                        'typeOfAppointment': serializeParam(
                          widget!.typeOfService,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: FFLocalizations.of(context).getText(
                    'e9t5y7fs' /* See Appointment */,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Nunito',
                          color: Colors.white,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.goNamed('HomePage');
                },
                text: FFLocalizations.of(context).getText(
                  'tb0h1cjj' /* Back to Home */,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Nunito',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
