import '/backend/schema/structs/index.dart';
import '/components/diagnostics_item_widget.dart';
import '/components/popular_doctor_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pharmacy/pharmacy_product_item/pharmacy_product_item_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(() => safeSetState(() {}));
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(146.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 40.0,
                            height: 40.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYSEhIREhUVGBIREhoYGBgYGBERGBIZGBgZGRgYGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISGjQrJCs0MTQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDE0NDQ0ND80NDQ0NDQ0NDQ0NDQ0NDE0NDQxNP/AABEIAOEA4AMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQIDBAUGBwj/xAA5EAACAQIEAwUGBQMFAQEAAAABAgADEQQSITEFQVEGImFxgRMykaGx0RQjQsHwUmJyBzOi4fGCQ//EABgBAQEBAQEAAAAAAAAAAAAAAAACAQME/8QAIxEBAQACAgMAAgIDAAAAAAAAAAECESExAxJBImETUTJxgf/aAAwDAQACEQMRAD8A9jhCE1ghCEAhCEAhCEBYQhAIQhAIQhAIQhAIQhAIQhAIQhAIsIQCEIQCEIQGwiRYBCEIBCEIBCEICwiRYBKnEOI08OntKzqiXtduvQdZQ492kw+BW9Z++w7tNBndvJeQ8TYTzPiXax8ZUb8uiua4QVb1CigEgLqFBPM2v52g76esYXitGquenVRltfRh9Iylxmi5srr8RPnx6hp5grgFjytlsehv8vCKwTTO7h9rry22021+UxUxfSKtfURbzwbB8SxCIEGIdqe41caDXYXE38D2/wARSAp1VVip0djmNuhN9Rb185PtFeletwmPwPj1PF0vaKQpBsysR3TbkeYmqtRTsRKllRZZ2fCEJrBFhCAQhCAQhCAQhCBXFYRwqCZeaAeNM21g8M8y/bGL7Y9Y0baWcRGqgTMNQ9YZ40bXmxIiLiZRvHAwxppUBnK9u+1P4Gkqpb21W4GxyKN2tzPT16TWqYj2as52UEnyAuZ4N2u40+LqGoxvdjl3AVRsAOW8KnKHiXHHruXZmLHdmJJPr+0y61c2NwCBruZBnuL8xpEWpob7ERtqxh3OhPnz5GJiK+dlPLX6mVqVTQDkIgO/89Ya6fgOK7yo2wIYHfY3+l9J0GNwqJWemApy5SmbvBlcAhbjXS+/gZw/CqxV97aadPXw/wCp1jcVNMU2qLdvZsqkixYA3Rrkakag203nnznL0YXePLd7H4yn+coBGdSpXcK6NmCjxtmt115zu+CY1QtwT7NrEak5eu+w2nh+Bx3sapqU7gVlJKt+hlsQw67/ACbrO77IdqEqZEqHK7Zh0DWsSfiZztyxu50rWOU1e3q4MdMXhuJKEI7ZlZiFOmnQfCbM9OOUym48uWNxuqWESLLSIQhAIQhAIQhAwC0LyOLN0k+8UGMvFBgOvC8SEBwMcDGCPWYMLtvjDSwVUj3qlqa+bmx+WaeH41+XKeq/6n4wLTo0/Fqh/wDkZF+bH4TyGu+Yk3mbdJFZh0Jk+Gwb1PdUn0l/hXDGqkG3dv8AGd9wrhq01GgkZZ/I6Y4fa86Tg1W/uGWF4JVO6kGenfhx0h+HHQTPaq9I4ah2bcqulr6n4/b6y1R7KO17k2/mvynb0aYE6bhmED01aw3nPLLJcxx+vHMf2XqoLqpJBPjMajTegys4YFT3eVtdSDPpIcPRhYgfATju2XZanlFQA2Cm/O1rW0EW2TdnDJ626nar2X7QNWogE/mUwBc2739JPjYT0Dh+LFWmr7G2o3sftPOuzHB8od765B5BbXAHUbzvOBUilIBgATyGtpPhusrJ0zzSa39akIQnreYsIkICwiRYBCEIHORYl4AyklhFBiEwFBi3jITA68cGkccIHn3+qSnNRJHdNNxf+5SDv6zzFUu6rzY/AT1//U6gzYNHUX9nVBPgGUqD8SJ5jwnCGpVpr+ptPrec8uHXDl2vZ7CBaYm0PCQKEo0+8wVVGpOgmO3amgrEd4jrbecpjby7XKY8OgEPjMah2lw7/rtfqGE1qddWAKkEHmNbyrNdtl30npidTwOp+WF8d5x9TFLTBLHQS5wztdhqJy1H0POzH00Em/pV6egoJFj8KKqMjC9xOfpdtcMT7xIPMC4+I8xOjwuJWooZDcGdJ65TTz2ZY3bj8BTNB0XezlDzuCpN/wDiZ0HC8T7SmrjYj6aTIxNNlxTqTYOpK+BuVHyImxw+nlpUwBbuA2231/eefwy+1/Tr5bPWVfSpJFaVgI9TPXt5liEjV4/NNCwiXheAsIl4ZoGJ7OL7OOzRyyko/Zw9nJTEvAj9nFFOPvFvAaKcPZR14Bpmhz3aLGLlqYUoHD0yHF7MFcEXUbEjeebdksGRi3zjWmp3FudhpPQe0VAJXFdj3Wp5fUG30nM8KIbG4llBANNDrz5X+U89zvtca9c8cmMyheM4dajfm6omyg2HiW8Zy+NxWHF1FNTbpuPPp6ztcZhs977fWZdbCBRZUS3TKsmb3yvU1w4lWQm4VlW/UHf+dZ2HAC2WykleXhKb8JZ21VbdLA/Kb/C8EKQsBqTNymzHgvEsETTzNonWchiatIMQELW6k9eg/ee3HgqV8OKbC113E4PH9h6yOTTVWF/7Bf1MiY2c3pXvMuJ2x+A8VpZlARO7yayi3TNaw572nr3CHUojKuXMCCLWsRuOh8xvOQ4Bha2HcZqJC7GyqfntO6wdNcoKgKOgAAHoNJuE3luJ8t1jqszjWHBq030uRb1DD7/KaNJhqmt0sCTbvEgHb1EqcefItN8ua1QDyBBuT4afOSUKoZBUAtn3H+Nxf4W+ErGyeWyf7cspb45b11/1bheQB4Z56Hn2nvFDStmi54NrF4Z5Dmhmg2mvC8gzxc0G2fHK0SBEpJSYCII4QFhCJeGlvHCRx14Gb2hwQq0WHNO9425/f0nL8PpZDZrZ7bjmp1E7sC85ziWENNrhTlvobaAcgTy6Th5MefZ6fD5Px9apNTveVa4VdTJatSw9JiYjF52sNdbTn/J8jvjjO6s0K+dwo0GuvpNFdALkXEzqaWGin6SMl1bmQeRN49rI2SWvT+B4gNRW3LSZvavibUDSy374a/MaW+85jAcRqKqpTJVQbk6EsfEkS/jA9UZ3uxtbyHhM9/bHSf4/XP2aHC+OhiM1tZ1dIggEbGeRvVNJ/C+09H7N4v2lBT00m+PLV1U+fGWe0XcfhRVUI17E305WBkD2WyAWCqBbpLtaqF8ztM5tTfrO0xntv68tyutfDrxVMZCWg8mJeNvCA7NFzRoEW0B14XjYQKwMcTFywyykmiPEMsbAdGMY+MaAzNHqbyMxyCKJlErcTTNRqD+2/wANf2lnNEYXBB2IsfWTZuKl1duBxbd2c89B1qn2bWNri+oOpnQcUplGZD+kkedpQUd5X6C08c4vL3y8M/DYquWIrMEsdwpsd7c5p0sOGNvxKX16DYj+7xl0KjrqNZVfDKDpb6S+F42/2tYbCaBjiaeoJ3B0Avcd7WP4hja1BLUnWo9rZQjHWynXvWA1O/SJwtyjgqQNfCej4JldBcAgjoJkkt03PK4zfbyDEriKmRqwVWJtlUZd+us9M7JYY08OoPM3HlMziXA3qYpQB+WO9m89/WdVQphbKNlFhEn5OGec9df2ZjDqPKVzH1nuxPKRgz1x5KIkkECJrEcURrCKszQdFvEDRbzAZosbaECINFzRLRrSmHlozNEjCIEheNJjLR0BAJIDGWjgIC54ntIoERwACTsBcwOO40b1Kn+ZmWgEv8QqZ3ZxszEjyJ0mVVJGo+E8V/yr3SakWl0Nxzj2XMJQGJ01jlxotYn7yplPrY1MBRAYXIAnoXCzdFtsJ5fRrgnew+k7/gGLzoLXsNBpb1P2me0mUM5bi6BgJFVFlJ9Iqm8fVUFbHS/1nbHVu3lu5NM7LFCRzCxIO4iZp1cy2gYl4oaA3LEaPvEIjYivHKIoSOtNDbxwaNYRhBmaFcVIe0kn4eL+FjZqmq0eBEFAx6UjNDSsTLJhTjwkzbdK+WNIlxacmKKBc2sI2aUFEzuOVCMPWK7im1vO0u4jFgghBp16+Up1aftKbKf1KROkxvdRa4jB1g9Km3Wmv0Ea9PWU8Ipou9Bv0N3eXdvp9vSaYF54M8dV78ctxSdBzlV8OOU1WS8r1KW8lRvCsGzVFHK89Q4ciqihRYATz3hjMrj4eU7WljgqgczI3rJuWO8eG1TmV2sx3saCMDZvxFG3iBVQt/xDD1k4xy01zObfU+k4/jGJbG4mlSGiBwxHJVQgn46D1E6e3Gp9cph+W71Hf16GcAg2NvjM8gqbHcTXQWAHQRtWmGGov9Z6o81jNRo+0c+HK6jUfMecZmmpIwiK0CYgE0SgxSZHeIXmCUQIkQqQapNE+YRC8ZlihJijw4ilxEFOHs4EbPAPEfKu5/eVK2LA0UamVMbU3KRbfEhRczIxuOd2taydNfnFrVT1lNrllA3JnXHGRzyytXkOlhGq5hT2ufGR18UqakgDqxCj5y2Of7Q8LLFqlMd9O8AN2U+8v7/+zJwta4BnWYbHpWqWpurZRZra2ve3nqJhcb4eaNQ1FH5dQ3/xY6keu/xnm82G+Y9Hhz1+NMiMAf4NI2i15OUnluL0zItAWlpaxJveVRpGu9hJ9VeyTG42wJJmn2WwhA/EVB3qpAW491BqPjv8JzlDCmvUCWJUG7217o3Hrt6zv6KA5NgFI9BY/ITt4vHO65eXyXWo6IGBjEcEAggjwjzOjijBsPIxr0FblY9RpB/1DqLxKFUHSBUq4Vl1Go+fwkQE0y9jY7Rlakp1OniJqdKIj8gjquGK6g3EjDw0opRGpR4eOLwkuSAEt5YyoQoLHYQpC1QKLsbCUMVj791NvDc/aQ4+uWuTsNhKyN3RboJ2wwk5rnll8hxc6/y8aq21O8FBJueUVlvL2nSNzERBe/OPKQVLc4FHFI9rIwF+drkeV5mnhV6l3JY9TcmdA1jGNaZxexzLYNsNVNSmO6d97WO4PhN+hXp10dG/WNVb5W+4j6gvb5zPr4Gxug9PtGjemVVw5w57/wDtn3H5EdD0Mca4I026zXp4qyGnUXOnNW109Zz/ABHh3sbvTOagToedM/0t4eM45ePXLtj5N8VItU/A6/eFCg9ZyiDzPJRfUmQ4BHquKdMFiev6RzJPQTrMJRWkmSnYsfebkTzPj9JEw2u56Jw3BLSz01Fjbfmxtv8AOXGuVNMG9x3m8Adh4nS59IqKVXU3JkyIFpnqTvOv6jjv+1XhmDdS3s2ZbnkdPUbToULBgpN1tvpe9vCQcLXLTZjzJkK1Tn05kfKRZuqnEXKr2eVUezER+PezDyEhrvrEhteqNmQMN13jqFS+h57Svgq2uU/qj8RdBmFtDGvjdrFJrEqdxt5SPEUL6j1ihwyq9tQf/ZZEwZ4pxwpyWt3T5yE1YF2ZfEq9zlGy/WaFSoFUt0Ew3N9ecrGcsyQ1ToRG02BAttBxIsMpAI6H5TtLw5fUxaITFCRcsNNMYRJbCJpNYiywCGS5oZoEfs4CnHBoXmCCthQ2+/WQJgs3cuMx0N9VZeeYcxa8uO0hwqF6jhvdNMjTQ9420PkZu7pmptHw1aFNalLDqQF95jctU33PTw5TRSmq6Dy+GkpJw4Uc7AlixFzoNAeg0ltWkScKt5Tixj3tosjp7wc96NNXWe1MDlI6JAIfpG1nugHSQ027smThW1mqc1jeNrLzjeQXnaOxYF7DoPpARFN1PQyziGLJ43Mhpn8t/wDISxRrjuAjl0vJrYbgWNih219Jdom4J6senlGhVF/Aeoi4fRQOgHz/AIZNu2lxCXXylMpNHwlRhYkQVVxxIAHX9pmky7jql3I5DT4bylvtLx6TSM0rI/fYesneV3XUHp/PvOkRU94F4BOd4lxG26BeGpjma0A+kcs4IEMUpBWjc01hwSLlEQnWIxuYDsokOHqD2jAf0m/xUSZvdMp0E/MZj/Sw/wCQmz6W9NOubqdOUiRwSdOcV9VPlK9MWJ9PoJPw+ruawvBGvEf3RG0f3mfFJQ+/hEpEHS0auzHqYYY2b0jRtMmptzGkc4BbKd72kVA/mXjyS1X1k1S2lC6ut9b6+FpNRw9mzeFgJHSqAvUvz0/aW6fXltItbFfFLruLPb5bn4R+Ea65jzN5VxzFnCA6DfzP/Uu3CL4KP2mfG/T1N2bwtIMVoQev7RMG5YknmInEvcJ/pYfb94Kyq/vN5t9TK6cvOJCdJ0ktXlKmK90+n1EWEqJqflGrvCEQPeJyhCUkJEP7whNDjv6RBuYQgTP7p/nKVqPvHyb6whGPTKst7p8o1ef85CLCYpLHrCElp3KMpe96RYR8AvvH0ktH/cESEyqiWl77+Y+sv4X3B5n6whOdVGb/APu3+X7y3jfcWEJgfgdvSHEP9qp/OYhCB//Z',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'do6lk6kn' /* Current Location */,
                                    ),
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
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 16.0,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'dmgrk9tc' /* United States */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Nunito',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      Icon(
                                        FFIcons.karrowIosDownwardOutline,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 16.0,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFE4E5E7),
                            borderRadius: 100.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            icon: Icon(
                              FFIcons.kbell,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 22.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('Notifications');
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController',
                            Duration(milliseconds: 10),
                            () => safeSetState(() {}),
                          ),
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'nakre3m5' /* Search */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: Color(0xFFF1F1F1),
                            prefixIcon: Icon(
                              FFIcons.ksearch,
                              size: 24.0,
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                          minLines: 1,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 0.0,
          ),
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
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ihgkw6y9' /* Featured Services */,
                                ),
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
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 12.0, 20.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('DoctorAppointment');
                              },
                              child: Container(
                                width: double.infinity,
                                height: 126.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/Frame_34543.png',
                                    ).image,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 26.0, 0.0, 16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'nif6p25w' /* Doctor Appointment */,
                                          ),
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'h8pep6nv' /* Online consultancy of 
popular... */
                                              ,
                                            ),
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
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 12.0, 20.0, 0.0),
                            child: GridView(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12.0,
                                mainAxisSpacing: 12.0,
                                childAspectRatio: 1.5,
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
                                    context.pushNamed('Diagnostics');
                                  },
                                  child: Container(
                                    width: 161.0,
                                    height: 109.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/Frame_33802.png',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(14.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'xw2dy6py' /* Diagnostics  */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Nunito',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ],
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
                                    context.goNamed('Pharmacy');
                                  },
                                  child: Container(
                                    width: 161.0,
                                    height: 109.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/Frame_33802.png',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(14.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ylf9m5z9' /* Pharmacy */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Nunito',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ],
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
                                    context.pushNamed('Ambulance');
                                  },
                                  child: Container(
                                    width: 161.0,
                                    height: 109.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/Frame_33803.png',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(14.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'x58tz2np' /* Ambulance */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Nunito',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ],
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
                                    context.pushNamed('NursingCare');
                                  },
                                  child: Container(
                                    width: 161.0,
                                    height: 109.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/Frame_3382.png',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(14.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '534c23io' /* Nursing 
Care */
                                                ,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Nunito',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ],
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
                                    context.pushNamed('redirectUber');
                                  },
                                  child: Container(
                                    width: 161.0,
                                    height: 109.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/Driveroverview-svg.png',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(14.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '2acc84ni' /* Uber */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Nunito',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'mvcca57p' /* Popular Doctor */,
                                    ),
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
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('PopularDoctor');
                                  },
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ptb0clg5' /* View All */,
                                    ),
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
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 140.0,
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final doctor = FFAppState().doctors.toList();

                                  return ListView.separated(
                                    padding: EdgeInsets.fromLTRB(
                                      20.0,
                                      0,
                                      20.0,
                                      0,
                                    ),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: doctor.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(width: 16.0),
                                    itemBuilder: (context, doctorIndex) {
                                      final doctorItem = doctor[doctorIndex];
                                      return PopularDoctorItemWidget(
                                        key: Key(
                                            'Keyfmh_${doctorIndex}_of_${doctor.length}'),
                                        image: doctorItem.image,
                                        name: doctorItem.name,
                                        specialization:
                                            doctorItem.specialization,
                                        location: doctorItem.location,
                                        rating: doctorItem.rating,
                                        experience: doctorItem.exp,
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
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'a7pi2ukh' /* Diagnostics */,
                                    ),
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
                                  FFLocalizations.of(context).getText(
                                    '8zvykzbu' /* View All */,
                                  ),
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 240.0,
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final diagnostics =
                                      FFAppState().diagnpsticsItems.toList();

                                  return ListView.separated(
                                    padding: EdgeInsets.fromLTRB(
                                      20.0,
                                      0,
                                      20.0,
                                      0,
                                    ),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: diagnostics.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(width: 16.0),
                                    itemBuilder: (context, diagnosticsIndex) {
                                      final diagnosticsItem =
                                          diagnostics[diagnosticsIndex];
                                      return DiagnosticsItemWidget(
                                        key: Key(
                                            'Key07q_${diagnosticsIndex}_of_${diagnostics.length}'),
                                        image: diagnosticsItem.image,
                                        color: diagnosticsItem.color!,
                                        name: diagnosticsItem.name,
                                        description:
                                            diagnosticsItem.description,
                                        price: diagnosticsItem.price,
                                        btnAction: () async {},
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
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'hrbwiwl2' /* Product List */,
                                    ),
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
                                  FFLocalizations.of(context).getText(
                                    'bkoxg44v' /* View All */,
                                  ),
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final medicine =
                                    FFAppState().medicines.toList();

                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(medicine.length,
                                            (medicineIndex) {
                                      final medicineItem =
                                          medicine[medicineIndex];
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'MedicineDetails',
                                            queryParameters: {
                                              'image': serializeParam(
                                                medicineItem.image,
                                                ParamType.String,
                                              ),
                                              'name': serializeParam(
                                                medicineItem.name,
                                                ParamType.String,
                                              ),
                                              'secondary': serializeParam(
                                                medicineItem.secondary,
                                                ParamType.String,
                                              ),
                                              'price': serializeParam(
                                                medicineItem.price,
                                                ParamType.double,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: PharmacyProductItemWidget(
                                          key: Key(
                                              'Keykpa_${medicineIndex}_of_${medicine.length}'),
                                          photo: medicineItem.image,
                                          name: medicineItem.name,
                                          secondaryText: medicineItem.secondary,
                                          price: medicineItem.price,
                                        ),
                                      );
                                    })
                                        .divide(SizedBox(width: 16.0))
                                        .addToStart(SizedBox(width: 20.0))
                                        .addToEnd(SizedBox(width: 20.0)),
                                  ),
                                );
                              },
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
