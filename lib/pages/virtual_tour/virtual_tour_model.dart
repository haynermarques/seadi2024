import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/navigator_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'virtual_tour_widget.dart' show VirtualTourWidget;
import 'package:flutter/material.dart';

class VirtualTourModel extends FlutterFlowModel<VirtualTourWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // State field(s) for addressRegion widget.
  bool addressRegionHovered = false;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    navigatorModel.dispose();
  }
}
