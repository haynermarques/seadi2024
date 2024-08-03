import '/backend/supabase/supabase.dart';
import '/components/barracontratos_widget.dart';
import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'contratos_busca_widget.dart' show ContratosBuscaWidget;
import 'package:flutter/material.dart';

class ContratosBuscaModel extends FlutterFlowModel<ContratosBuscaWidget> {
  ///  Local state fields for this page.

  List<ContratosSeadiRow> listResult = [];
  void addToListResult(ContratosSeadiRow item) => listResult.add(item);
  void removeFromListResult(ContratosSeadiRow item) => listResult.remove(item);
  void removeAtIndexFromListResult(int index) => listResult.removeAt(index);
  void insertAtIndexInListResult(int index, ContratosSeadiRow item) =>
      listResult.insert(index, item);
  void updateListResultAtIndex(
          int index, Function(ContratosSeadiRow) updateFn) =>
      listResult[index] = updateFn(listResult[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in ContratosBusca widget.
  List<ContratosSeadiRow>? queryResult;
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // Model for Barracontratos component.
  late BarracontratosModel barracontratosModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ContratosSeadiRow>? tipoQuery;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ContratosSeadiRow>();

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    barracontratosModel = createModel(context, () => BarracontratosModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
    headerModel.dispose();
    subHeaderModel.dispose();
    barracontratosModel.dispose();
    textFieldFocusNode?.dispose();
  }
}
