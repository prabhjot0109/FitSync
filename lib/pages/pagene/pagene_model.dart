import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagene_widget.dart' show PageneWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class PageneModel extends FlutterFlowModel<PageneWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
