import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page4_model.dart';
export 'page4_model.dart';

class Page4Widget extends StatefulWidget {
  const Page4Widget({Key? key}) : super(key: key);

  @override
  _Page4WidgetState createState() => _Page4WidgetState();
}

class _Page4WidgetState extends State<Page4Widget> {
  late Page4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Page4Model());
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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              'qxkx9o1h' /* Page 4 */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.00, -1.00),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 20.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'kjqd3dpl' /* Code barre */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 30.0,
                        ),
                  ),
                ),
                BarcodeWidget(
                  data: FFAppState().color,
                  barcode: Barcode.code128(),
                  width: 300.0,
                  height: 90.0,
                  color: FlutterFlowTheme.of(context).primaryText,
                  backgroundColor: Colors.transparent,
                  errorBuilder: (_context, _error) => SizedBox(
                    width: 300.0,
                    height: 90.0,
                  ),
                  drawText: false,
                ),
                Text(
                  FFAppState().color,
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 20.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'ihqjri94' /* QR code */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 30.0,
                        ),
                  ),
                ),
                BarcodeWidget(
                  data: FFAppState().color,
                  barcode: Barcode.qrCode(),
                  width: 300.0,
                  height: 90.0,
                  color: FlutterFlowTheme.of(context).primaryText,
                  backgroundColor: Colors.transparent,
                  errorBuilder: (_context, _error) => SizedBox(
                    width: 300.0,
                    height: 90.0,
                  ),
                  drawText: false,
                ),
                Text(
                  FFAppState().color,
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
