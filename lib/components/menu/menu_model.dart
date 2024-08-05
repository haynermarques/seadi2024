import '/components/menu_item/menu_item_widget.dart';
import '/components/sub_menu_item/sub_menu_item_widget.dart';
import '/components/user_row_card_res_start_chat/user_row_card_res_start_chat_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'menu_widget.dart' show MenuWidget;
import 'package:flutter/material.dart';

class MenuModel extends FlutterFlowModel<MenuWidget> {
  ///  Local state fields for this component.

  bool subMenuOrders = false;

  bool showUpgrade = false;

  ///  State fields for stateful widgets in this component.

  // Model for MenuItem component.
  late MenuItemModel menuItemModel1;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel2;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel3;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel1;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel2;
  // Model for SubMenuItem component.
  late SubMenuItemModel subMenuItemModel3;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel4;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel5;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel6;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel7;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel8;
  // Model for userRowCardResStartChat component.
  late UserRowCardResStartChatModel userRowCardResStartChatModel1;
  // Model for userRowCardResStartChat component.
  late UserRowCardResStartChatModel userRowCardResStartChatModel2;
  // Model for userRowCardResStartChat component.
  late UserRowCardResStartChatModel userRowCardResStartChatModel3;

  @override
  void initState(BuildContext context) {
    menuItemModel1 = createModel(context, () => MenuItemModel());
    menuItemModel2 = createModel(context, () => MenuItemModel());
    menuItemModel3 = createModel(context, () => MenuItemModel());
    subMenuItemModel1 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel2 = createModel(context, () => SubMenuItemModel());
    subMenuItemModel3 = createModel(context, () => SubMenuItemModel());
    menuItemModel4 = createModel(context, () => MenuItemModel());
    menuItemModel5 = createModel(context, () => MenuItemModel());
    menuItemModel6 = createModel(context, () => MenuItemModel());
    menuItemModel7 = createModel(context, () => MenuItemModel());
    menuItemModel8 = createModel(context, () => MenuItemModel());
    userRowCardResStartChatModel1 =
        createModel(context, () => UserRowCardResStartChatModel());
    userRowCardResStartChatModel2 =
        createModel(context, () => UserRowCardResStartChatModel());
    userRowCardResStartChatModel3 =
        createModel(context, () => UserRowCardResStartChatModel());
  }

  @override
  void dispose() {
    menuItemModel1.dispose();
    menuItemModel2.dispose();
    menuItemModel3.dispose();
    subMenuItemModel1.dispose();
    subMenuItemModel2.dispose();
    subMenuItemModel3.dispose();
    menuItemModel4.dispose();
    menuItemModel5.dispose();
    menuItemModel6.dispose();
    menuItemModel7.dispose();
    menuItemModel8.dispose();
    userRowCardResStartChatModel1.dispose();
    userRowCardResStartChatModel2.dispose();
    userRowCardResStartChatModel3.dispose();
  }
}
