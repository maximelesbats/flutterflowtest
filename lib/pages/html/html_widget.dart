import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'html_model.dart';
export 'html_model.dart';

class HtmlWidget extends StatefulWidget {
  const HtmlWidget({Key? key}) : super(key: key);

  @override
  _HtmlWidgetState createState() => _HtmlWidgetState();
}

class _HtmlWidgetState extends State<HtmlWidget> {
  late HtmlModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HtmlModel());
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
              'ur3wmd4m' /* Test HTML */,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowWebView(
                content:
                    '<script type=\"text/javascript\" src=\"https://www.planetoscope.com/widget.php?id=2045&f=1\"></script>',
                height: MediaQuery.sizeOf(context).height * 0.35,
                verticalScroll: false,
                horizontalScroll: false,
                html: true,
              ),
              FlutterFlowWebView(
                content:
                    '<iframe  src=\"https://www.youtube.com/embed/S3s4g2xT8Ls?si=T99FdSLbzN_1u31j&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>',
                height: MediaQuery.sizeOf(context).height * 0.35,
                verticalScroll: false,
                horizontalScroll: false,
                html: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
