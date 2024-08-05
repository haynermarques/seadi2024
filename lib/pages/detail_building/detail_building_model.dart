import '/components/address_row/address_row_widget.dart';
import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/review_card/review_card_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detail_building_widget.dart' show DetailBuildingWidget;
import 'package:flutter/material.dart';

class DetailBuildingModel extends FlutterFlowModel<DetailBuildingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // Model for AddressRow component.
  late AddressRowModel addressRowModel1;
  // Model for AddressRow component.
  late AddressRowModel addressRowModel2;
  // Model for ReviewCard component.
  late ReviewCardModel reviewCardModel1;
  // Model for ReviewCard component.
  late ReviewCardModel reviewCardModel2;
  // Model for ReviewCard component.
  late ReviewCardModel reviewCardModel3;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    addressRowModel1 = createModel(context, () => AddressRowModel());
    addressRowModel2 = createModel(context, () => AddressRowModel());
    reviewCardModel1 = createModel(context, () => ReviewCardModel());
    reviewCardModel2 = createModel(context, () => ReviewCardModel());
    reviewCardModel3 = createModel(context, () => ReviewCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    addressRowModel1.dispose();
    addressRowModel2.dispose();
    reviewCardModel1.dispose();
    reviewCardModel2.dispose();
    reviewCardModel3.dispose();
  }
}
