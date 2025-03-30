import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pagene_model.dart';
export 'pagene_model.dart';

class PageneWidget extends StatefulWidget {
  const PageneWidget({super.key});

  static String routeName = 'Pagene';
  static String routePath = '/pagene';

  @override
  State<PageneWidget> createState() => _PageneWidgetState();
}

class _PageneWidgetState extends State<PageneWidget> {
  late PageneModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageneModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: 111.0,
                  height: double.infinity,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  child: ExpandableNotifier(
                    controller: _model.expandableExpandableController,
                    child: ExpandablePanel(
                      header: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/vnimc_1.png',
                                width: 260.0,
                                height: 80.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      collapsed: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FlutterFlowIconButton(
                            borderColor:
                                FlutterFlowTheme.of(context).primaryText,
                            borderRadius: 50.0,
                            buttonSize: 60.0,
                            fillColor: FlutterFlowTheme.of(context).primaryText,
                            icon: FaIcon(
                              FontAwesomeIcons.home,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(HomePageWidget.routeName);
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor:
                                FlutterFlowTheme.of(context).primaryText,
                            borderRadius: 50.0,
                            buttonSize: 60.0,
                            fillColor: FlutterFlowTheme.of(context).primaryText,
                            icon: FaIcon(
                              FontAwesomeIcons.home,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                PageneWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor:
                                FlutterFlowTheme.of(context).primaryText,
                            borderRadius: 50.0,
                            buttonSize: 60.0,
                            fillColor: FlutterFlowTheme.of(context).primaryText,
                            icon: FaIcon(
                              FontAwesomeIcons.home,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor:
                                FlutterFlowTheme.of(context).primaryText,
                            borderRadius: 50.0,
                            buttonSize: 60.0,
                            fillColor: FlutterFlowTheme.of(context).primaryText,
                            icon: FaIcon(
                              FontAwesomeIcons.home,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                      expanded: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context).primary,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  '9oxft9v8' /* Expanded body text */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0x8A000000),
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: false,
                        tapBodyToCollapse: false,
                        headerAlignment: ExpandablePanelHeaderAlignment.bottom,
                        hasIcon: false,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 1360.0,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
