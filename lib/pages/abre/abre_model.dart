import '/components/barracontratos_widget.dart';
import '/components/divider/divider_widget.dart';
import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'abre_widget.dart' show AbreWidget;
import 'package:flutter/material.dart';

class AbreModel extends FlutterFlowModel<AbreWidget> {
  ///  Local state fields for this page.

  bool subMenuOrders = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // Model for Divider component.
  late DividerModel dividerModel;
  // Model for Barracontratos component.
  late BarracontratosModel barracontratosModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    dividerModel = createModel(context, () => DividerModel());
    barracontratosModel = createModel(context, () => BarracontratosModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    dividerModel.dispose();
    barracontratosModel.dispose();
  }
}
