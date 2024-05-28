import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'potato_disease_model.dart';
export 'potato_disease_model.dart';

class PotatoDiseaseWidget extends StatefulWidget {
  const PotatoDiseaseWidget({Key? key}) : super(key: key);

  @override
  _PotatoDiseaseWidgetState createState() => _PotatoDiseaseWidgetState();
}

class _PotatoDiseaseWidgetState extends State<PotatoDiseaseWidget> {
  late PotatoDiseaseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PotatoDiseaseModel());

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '0ww1mr8o' /* Page Title */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'drnzy1xx' /* Select All the possible images... */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.49,
                            height: 150.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Alternaria_Leaf_resized.jpg',
                                ).image,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(1.00, 1.00),
                              child: Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.standard,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.padded,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor: Color(0xFF000103),
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue1 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue1 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.49,
                          height: 150.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/download_(1).jpeg',
                              ).image,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(1.00, 1.00),
                            child: Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.standard,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.padded,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                unselectedWidgetColor: Colors.black,
                              ),
                              child: Checkbox(
                                value: _model.checkboxValue2 ??= false,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.checkboxValue2 = newValue!);
                                },
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor: FlutterFlowTheme.of(context).info,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.49,
                              height: 150.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/download.jpeg',
                                  ).image,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(1.00, 1.00),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.standard,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.padded,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Color(0xFF000103),
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue3 ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.checkboxValue3 = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.49,
                            height: 150.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Vascular_Verticillium_Wilt_resized.jpg',
                                ).image,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(1.00, 1.00),
                              child: Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.standard,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.padded,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor: Colors.black,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue4 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue4 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.49,
                              height: 150.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/1BPC_Dry_Rot_resized.jpg',
                                  ).image,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(1.00, 1.00),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.standard,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.padded,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Color(0xFF000103),
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue5 ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.checkboxValue5 = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.49,
                            height: 150.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/images.jpeg',
                                ).image,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(1.00, 1.00),
                              child: Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.standard,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.padded,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor: Colors.black,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue6 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue6 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.49,
                              height: 150.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/Latent_ad_Mild_Mosaics_0_resized.jpg',
                                  ).image,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(1.00, 1.00),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.standard,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.padded,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Color(0xFF000103),
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue7 ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.checkboxValue7 = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.49,
                            height: 150.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Common_Scab_resized.jpg',
                                ).image,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(1.00, 1.00),
                              child: Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.standard,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.padded,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor: Colors.black,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue8 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue8 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 60.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.49,
                              height: 150.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/DSC4488_blackleg_resized-1.jpg',
                                  ).image,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(1.00, 1.00),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.standard,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.padded,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Color(0xFF000103),
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue9 ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.checkboxValue9 = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.49,
                            height: 150.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/potato_council_violet_root_rot_mild_and_severe_resized.jpg',
                                ).image,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(1.00, 1.00),
                              child: Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.standard,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.padded,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor: Colors.black,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue10 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue10 = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor: FlutterFlowTheme.of(context).info,
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
              Align(
                alignment: AlignmentDirectional(1.00, 1.00),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('PotatoDiseaseSolution');
                  },
                  text: FFLocalizations.of(context).getText(
                    'i1i6k8q2' /* Get Solution */,
                  ),
                  options: FFButtonOptions(
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
