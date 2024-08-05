import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/property_card/property_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'explore_widget.dart' show ExploreWidget;
import 'package:flutter/material.dart';

class ExploreModel extends FlutterFlowModel<ExploreWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Model for propertyCard component.
  late PropertyCardModel propertyCardModel1;
  // Model for propertyCard component.
  late PropertyCardModel propertyCardModel2;
  // Model for propertyCard component.
  late PropertyCardModel propertyCardModel3;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    propertyCardModel1 = createModel(context, () => PropertyCardModel());
    propertyCardModel2 = createModel(context, () => PropertyCardModel());
    propertyCardModel3 = createModel(context, () => PropertyCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
    headerModel.dispose();
    propertyCardModel1.dispose();
    propertyCardModel2.dispose();
    propertyCardModel3.dispose();
  }
}
