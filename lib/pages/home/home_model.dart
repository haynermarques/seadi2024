import '/components/divider/divider_widget.dart';
import '/components/header/header_widget.dart';
import '/components/item_card/item_card_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/property_card/property_card_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Model for Divider component.
  late DividerModel dividerModel;
  // Model for propertyCard component.
  late PropertyCardModel propertyCardModel1;
  // Model for propertyCard component.
  late PropertyCardModel propertyCardModel2;
  // Model for propertyCard component.
  late PropertyCardModel propertyCardModel3;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // Model for ItemCard component.
  late ItemCardModel itemCardModel1;
  // Model for ItemCard component.
  late ItemCardModel itemCardModel2;
  // Model for ItemCard component.
  late ItemCardModel itemCardModel3;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    dividerModel = createModel(context, () => DividerModel());
    propertyCardModel1 = createModel(context, () => PropertyCardModel());
    propertyCardModel2 = createModel(context, () => PropertyCardModel());
    propertyCardModel3 = createModel(context, () => PropertyCardModel());
    itemCardModel1 = createModel(context, () => ItemCardModel());
    itemCardModel2 = createModel(context, () => ItemCardModel());
    itemCardModel3 = createModel(context, () => ItemCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    dividerModel.dispose();
    propertyCardModel1.dispose();
    propertyCardModel2.dispose();
    propertyCardModel3.dispose();
    itemCardModel1.dispose();
    itemCardModel2.dispose();
    itemCardModel3.dispose();
  }
}
