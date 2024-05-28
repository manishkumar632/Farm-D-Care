import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'scancrop_model.dart';
export 'scancrop_model.dart';
import 'package:tflite/tflite.dart';
import 'dart:typed_data';


class ScancropWidget extends StatefulWidget {
  const ScancropWidget({Key? key}) : super(key: key);

  @override
  _ScancropWidgetState createState() => _ScancropWidgetState();
}

class _ScancropWidgetState extends State<ScancropWidget> {
  late ScancropModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScancropModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }







  Future<void> predictCropDisease() async {


    await Tflite.loadModel(
      model: 'assets/mobilenet_v2.tflite',
      labels: 'assets/labels.txt',
    );

// Perform inference on an image (replace 'imagePath' with your image path)
    final List<dynamic>? recognitions = await Tflite.runModelOnImage(
      path: imagePath,
      numResults: 2, // Number of top results to retrieve
    );

// Display the top prediction
    if (recognitions != null && recognitions.isNotEmpty) {
      final String predictedClass = recognitions[0]['label'];
      final double confidence = recognitions[0]['confidence'];

      // Update your UI with the prediction results
    }

// Release the model resources
    await Tflite.close();
    try {
      // Load the TensorFlow Lite model
      await Tflite.loadModel(
        model: 'assets/model.tflite',
        labels: 'assets/label.txt',
      );

      // Load the uploaded image as bytes
      Uint8List imageBytes = await NetworkHelper.get(_model.uploadedFileUrl);

      // Perform inference on the image
      final List<dynamic>? recognitions = await Tflite.runModelOnBinary(
        binary: imageBytes,
        numResults: 1, // You can change this to get more results if needed
      );

      if (recognitions != null && recognitions.isNotEmpty) {
        final String predictedDisease = recognitions[0]['label'];

        // Update the UI with the predicted disease
        setState(() {
          _model.predictedDisease = predictedDisease;
        });
      }
    } catch (e) {
      print('Error predicting crop disease: $e');
    } finally {
      // Release the model resources
      await Tflite.close();
    }
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
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '5a5d5ndw' /* Back */,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Container(
                          width: 160.0,
                          height: 160.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              width: 2.0,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    _model.uploadedFileUrl,
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Icon(
                                    Icons.photo_camera,
                                    color: Colors.white,
                                    size: 24.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: FFButtonWidget(
                        onPressed: () async {
                          final selectedMedia =
                              await selectMediaWithSourceBottomSheet(
                            context: context,
                            allowPhoto: true,
                          );
                          if (selectedMedia != null &&
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
                            setState(() => _model.isDataUploading = true);
                            var selectedUploadedFiles = <FFUploadedFile>[];

                            var downloadUrls = <String>[];
                            try {
                              showUploadMessage(
                                context,
                                'Uploading file...',
                                showLoading: true,
                              );
                              selectedUploadedFiles = selectedMedia
                                  .map((m) => FFUploadedFile(
                                        name: m.storagePath.split('/').last,
                                        bytes: m.bytes,
                                        height: m.dimensions?.height,
                                        width: m.dimensions?.width,
                                        blurHash: m.blurHash,
                                      ))
                                  .toList();

                              downloadUrls = (await Future.wait(
                                selectedMedia.map(
                                  (m) async =>
                                      await uploadData(m.storagePath, m.bytes),
                                ),
                              ))
                                  .where((u) => u != null)
                                  .map((u) => u!)
                                  .toList();
                            } finally {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              _model.isDataUploading = false;
                            }
                            if (selectedUploadedFiles.length ==
                                    selectedMedia.length &&
                                downloadUrls.length == selectedMedia.length) {
                              setState(() {
                                _model.uploadedLocalFile =
                                    selectedUploadedFiles.first;
                                _model.uploadedFileUrl = downloadUrls.first;
                              });
                              showUploadMessage(context, 'Success!');
                            } else {
                              setState(() {});
                              showUploadMessage(
                                  context, 'Failed to upload data');
                              return;
                            }
                          }
                        },
                        text: FFLocalizations.of(context).getText(
                          'xgiqtoem' /* Scan */,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).tertiary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await predictCropDisease();
                    await PredictionRecord.collection
                        .doc()
                        .set(createPredictionRecordData(
                          image: _model.uploadedFileUrl,
                        ));

                    context.pushNamed(
                      'showsolution',
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
                    'b04gf0cu' /* Get Solution */,
                  ),
                  options: FFButtonOptions(
                    width: MediaQuery.sizeOf(context).width * 0.4,
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
              if (_model.predictedDisease != null)
  Padding(
    padding: EdgeInsets.all(16.0),
    child: Text(
      'Predicted Crop Disease: ${_model.predictedDisease}',
      style: TextStyle(fontSize: 18.0),
    ),
  ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '79cnvk42' /* OR */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Nunito',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'u59kcq28' /* Select Crop and Its disease re... */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.of(context).success,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'selectcropimage',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 300),
                                ),
                              },
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            '87tfo2vm' /* Select */,
                          ),
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
