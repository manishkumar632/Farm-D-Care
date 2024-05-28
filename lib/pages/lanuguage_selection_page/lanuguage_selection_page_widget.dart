import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lanuguage_selection_page_model.dart';
export 'lanuguage_selection_page_model.dart';

class LanuguageSelectionPageWidget extends StatefulWidget {
  const LanuguageSelectionPageWidget({Key? key}) : super(key: key);

  @override
  _LanuguageSelectionPageWidgetState createState() =>
      _LanuguageSelectionPageWidgetState();
}

class _LanuguageSelectionPageWidgetState
    extends State<LanuguageSelectionPageWidget> {
  late LanuguageSelectionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanuguageSelectionPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 350.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: AlignmentDirectional(0.00, 0.00),
                      image: Image.asset(
                        'assets/images/signup.png',
                      ).image,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.00, -1.00),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'or5rnlk1' /* Choose Your Language */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Exo',
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ),
                      FlutterFlowLanguageSelector(
                        width: 200.0,
                        backgroundColor: FlutterFlowTheme.of(context).tertiary,
                        borderColor: Colors.transparent,
                        dropdownIconColor: Colors.white,
                        borderRadius: 8.0,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 13.0,
                        ),
                        hideFlags: false,
                        flagSize: 24.0,
                        flagTextGap: 8.0,
                        currentLanguage:
                            FFLocalizations.of(context).languageCode,
                        languages: FFLocalizations.languages(),
                        onChanged: (lang) => setAppLanguage(context, lang),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'HomePage',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 300),
                              ),
                            },
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'kf7en99r' /* Next */,
                        ),
                        options: FFButtonOptions(
                          width: 200.0,
                          height: 45.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Nunito',
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                ),
              ].divide(SizedBox(height: 10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
