import '/components/credit_card/credit_card_widget.dart';
import '/components/divider/divider_widget.dart';
import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/navigator_widget.dart';
import '/components/property_card/property_card_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'payment_widget.dart' show PaymentWidget;
import 'package:flutter/material.dart';

class PaymentModel extends FlutterFlowModel<PaymentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // Model for CreditCard component.
  late CreditCardWidgetModel creditCardModel;
  // State field(s) for NameTextField widget.
  FocusNode? nameTextFieldFocusNode1;
  TextEditingController? nameTextFieldTextController1;
  String? Function(BuildContext, String?)?
      nameTextFieldTextController1Validator;
  // State field(s) for NameTextField widget.
  FocusNode? nameTextFieldFocusNode2;
  TextEditingController? nameTextFieldTextController2;
  String? Function(BuildContext, String?)?
      nameTextFieldTextController2Validator;
  // State field(s) for NameTextField widget.
  FocusNode? nameTextFieldFocusNode3;
  TextEditingController? nameTextFieldTextController3;
  String? Function(BuildContext, String?)?
      nameTextFieldTextController3Validator;
  // State field(s) for NameTextField widget.
  FocusNode? nameTextFieldFocusNode4;
  TextEditingController? nameTextFieldTextController4;
  String? Function(BuildContext, String?)?
      nameTextFieldTextController4Validator;
  // Model for Divider component.
  late DividerModel dividerModel1;
  // Model for propertyCard component.
  late PropertyCardModel propertyCardModel;
  // Model for Divider component.
  late DividerModel dividerModel2;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    creditCardModel = createModel(context, () => CreditCardWidgetModel());
    dividerModel1 = createModel(context, () => DividerModel());
    propertyCardModel = createModel(context, () => PropertyCardModel());
    dividerModel2 = createModel(context, () => DividerModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    creditCardModel.dispose();
    nameTextFieldFocusNode1?.dispose();
    nameTextFieldTextController1?.dispose();

    nameTextFieldFocusNode2?.dispose();
    nameTextFieldTextController2?.dispose();

    nameTextFieldFocusNode3?.dispose();
    nameTextFieldTextController3?.dispose();

    nameTextFieldFocusNode4?.dispose();
    nameTextFieldTextController4?.dispose();

    dividerModel1.dispose();
    propertyCardModel.dispose();
    dividerModel2.dispose();
    navigatorModel.dispose();
  }
}
