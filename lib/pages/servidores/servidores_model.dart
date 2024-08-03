import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'servidores_widget.dart' show ServidoresWidget;
import 'package:flutter/material.dart';

class ServidoresModel extends FlutterFlowModel<ServidoresWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
  }
}
