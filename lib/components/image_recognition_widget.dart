import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'image_recognition_model.dart';
export 'image_recognition_model.dart';

class ImageRecognitionWidget extends StatefulWidget {
  const ImageRecognitionWidget({Key? key}) : super(key: key);

  @override
  _ImageRecognitionWidgetState createState() => _ImageRecognitionWidgetState();
}

class _ImageRecognitionWidgetState extends State<ImageRecognitionWidget> {
  late ImageRecognitionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageRecognitionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        'https://picsum.photos/seed/589/600',
        width: 300.0,
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
