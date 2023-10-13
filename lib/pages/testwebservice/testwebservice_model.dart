import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'testwebservice_widget.dart' show TestwebserviceWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TestwebserviceModel extends FlutterFlowModel<TestwebserviceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for NumParc widget.
  TextEditingController? numParcController;
  String? Function(BuildContext, String?)? numParcControllerValidator;
  String? _numParcControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9kyp4yw8' /* Le numéro de parc doit être sa... */,
      );
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (TestWebserviceSendImageGED)] action in IconButton widget.
  ApiCallResponse? apiResultfva;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    numParcControllerValidator = _numParcControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    numParcController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
