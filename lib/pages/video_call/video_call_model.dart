import '/components/divider/divider_widget.dart';
import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/message_item_widget.dart';
import '/components/navigator_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'video_call_widget.dart' show VideoCallWidget;
import 'package:flutter/material.dart';

class VideoCallModel extends FlutterFlowModel<VideoCallWidget> {
  ///  Local state fields for this page.

  bool show = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
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
    dividerModel1.dispose();
    messageItemModel1.dispose();
    messageItemModel2.dispose();
    messageItemModel3.dispose();
    messageItemModel4.dispose();
    messageItemModel5.dispose();
    dividerModel2.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navigatorModel.dispose();
  }
}
