import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'showsolution_model.dart';
export 'showsolution_model.dart';

class ShowsolutionWidget extends StatefulWidget {
  const ShowsolutionWidget({Key? key}) : super(key: key);

  @override
  _ShowsolutionWidgetState createState() => _ShowsolutionWidgetState();
}

class _ShowsolutionWidgetState extends State<ShowsolutionWidget>
    with TickerProviderStateMixin {
  late ShowsolutionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShowsolutionModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<PredictionRecord>>(
      stream: queryPredictionRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Image.network(
              '',
            ),
          );
        }
        List<PredictionRecord> showsolutionPredictionRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final showsolutionPredictionRecord =
            showsolutionPredictionRecordList.isNotEmpty
                ? showsolutionPredictionRecordList.first
                : null;
        return YoutubeFullScreenWrapper(
          child: GestureDetector(
            onTap: () =>
                FocusScope.of(context).requestFocus(_model.unfocusNode),
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              body: SafeArea(
                top: true,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: StreamBuilder<List<PredictionRecord>>(
                            stream: queryPredictionRecord(
                              singleRecord: true,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<PredictionRecord> imagePredictionRecordList =
                                  snapshot.data!;
                              // Return an empty Container when the item does not exist.
                              if (snapshot.data!.isEmpty) {
                                return Container();
                              }
                              final imagePredictionRecord =
                                  imagePredictionRecordList.isNotEmpty
                                      ? imagePredictionRecordList.first
                                      : null;
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  imagePredictionRecord!.image,
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'njcy77tv' /* Crop: Potato */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'tlug6hew' /* Disease: Late Blight */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment(0.0, 0),
                            child: TabBar(
                              labelColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              unselectedLabelColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              labelStyle:
                                  FlutterFlowTheme.of(context).titleMedium,
                              unselectedLabelStyle: TextStyle(),
                              indicatorColor:
                                  FlutterFlowTheme.of(context).primary,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 4.0, 4.0),
                              tabs: [
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'tdo3bewm' /* Solution */,
                                  ),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'me021eg2' /* Watch Video */,
                                  ),
                                ),
                              ],
                              controller: _model.tabBarController,
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: _model.tabBarController,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'sxbfympi' /* Late blight caused by the fung... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 16.0,
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.33,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/00b1f292-23dd-44d4-aad3-c1ffb6a6ad5a___RS_LB_4479.JPG',
                                                    ).image,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.33,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/0eb24a67-a174-43db-86c7-cca8795942a2___RS_LB_4722.JPG',
                                                    ).image,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.33,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/1ab62af3-c0a5-4fab-bb62-e06d6f7ddb59___RS_LB_2908.JPG',
                                                    ).image,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'y4bn56k7' /* Late blight is controlled by e... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 16.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Container(
                                    width: double.infinity,
                                    height: 270.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: FlutterFlowYoutubePlayer(
                                      url:
                                          'https://www.youtube.com/watch?v=PSXXoGrOyDg',
                                      width: double.infinity,
                                      height: double.infinity,
                                      autoPlay: false,
                                      looping: true,
                                      mute: false,
                                      showControls: true,
                                      showFullScreen: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
