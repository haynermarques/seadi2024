import '/components/divider/divider_widget.dart';
import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/message_item_widget.dart';
import '/components/navigator_widget.dart';
import '/components/sender_item_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'message_widget.dart' show MessageWidget;
import 'package:flutter/material.dart';

class MessageModel extends FlutterFlowModel<MessageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // State field(s) for SearchTextField widget.
  FocusNode? searchTextFieldFocusNode;
  TextEditingController? searchTextFieldTextController;
  String? Function(BuildContext, String?)?
      searchTextFieldTextControllerValidator;
  // Model for senderItem component.
  late SenderItemModel senderItemModel1;
  // Model for senderItem component.
  late SenderItemModel senderItemModel2;
  // Model for senderItem component.
  late SenderItemModel senderItemModel3;
  // Model for Divider component.
  late DividerModel dividerModel1;
  // Model for MessageItem component.
  late MessageItemModel messageItemModel1;
  // Model for MessageItem component.
  late MessageItemModel messageItemModel2;
  // Model for MessageItem component.
  late MessageItemModel messageItemModel3;
  // Model for MessageItem component.
  late MessageItemModel messageItemModel4;
  // Model for MessageItem component.
  late MessageItemModel messageItemModel5;
  // Model for Divider component.
  late DividerModel dividerModel2;
  // State field(s) for MessageTextField widget.
  FocusNode? messageTextFieldFocusNode;
  TextEditingController? messageTextFieldTextController;
  String? Function(BuildContext, String?)?
      messageTextFieldTextControllerValidator;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    senderItemModel1 = createModel(context, () => SenderItemModel());
    senderItemModel2 = createModel(context, () => SenderItemModel());
    senderItemModel3 = createModel(context, () => SenderItemModel());
    dividerModel1 = createModel(context, () => DividerModel());
    messageItemModel1 = createModel(context, () => MessageItemModel());
    messageItemModel2 = createModel(context, () => MessageItemModel());
    messageItemModel3 = createModel(context, () => MessageItemModel());
    messageItemModel4 = createModel(context, () => MessageItemModel());
    messageItemModel5 = createModel(context, () => MessageItemModel());
    dividerModel2 = createModel(context, () => DividerModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    searchTextFieldFocusNode?.dispose();
    searchTextFieldTextController?.dispose();

    senderItemModel1.dispose();
    senderItemModel2.dispose();
    senderItemModel3.dispose();
    dividerModel1.dispose();
    messageItemModel1.dispose();
    messageItemModel2.dispose();
    messageItemModel3.dispose();
    messageItemModel4.dispose();
    messageItemModel5.dispose();
    dividerModel2.dispose();
    messageTextFieldFocusNode?.dispose();
    messageTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
