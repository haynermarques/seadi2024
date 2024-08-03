import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/navigator_widget.dart';
import '/components/order_items/order_items_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_order_widget.dart' show MyOrderWidget;
import 'package:flutter/material.dart';

class MyOrderModel extends FlutterFlowModel<MyOrderWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel1;
  // Model for OrderItems component.
  late OrderItemsModel orderItemsModel1;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel2;
  // Model for OrderItems component.
  late OrderItemsModel orderItemsModel2;
  // Model for OrderItems component.
  late OrderItemsModel orderItemsModel3;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel1 = createModel(context, () => SubHeaderModel());
    orderItemsModel1 = createModel(context, () => OrderItemsModel());
    subHeaderModel2 = createModel(context, () => SubHeaderModel());
    orderItemsModel2 = createModel(context, () => OrderItemsModel());
    orderItemsModel3 = createModel(context, () => OrderItemsModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel1.dispose();
    orderItemsModel1.dispose();
    subHeaderModel2.dispose();
    orderItemsModel2.dispose();
    orderItemsModel3.dispose();
    navigatorModel.dispose();
  }
}
