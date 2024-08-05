import '/components/divider/divider_widget.dart';
import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/navigator_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'setting_model.dart';
export 'setting_model.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({super.key});

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  late SettingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'Setting',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if ((FFAppState().drawer &&
                                  (MediaQuery.sizeOf(context).width <=
                                      kBreakpointSmall)) ||
                              (!FFAppState().drawer &&
                                  (MediaQuery.sizeOf(context).width >
                                      kBreakpointSmall)))
                            wrapWithModel(
                              model: _model.menuModel,
                              updateCallback: () => setState(() {}),
                              updateOnChange: true,
                              child: const MenuWidget(
                                activePageName: 'Dashboard',
                                pageIsInSubMenu: false,
                              ),
                            ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.headerModel,
                                  updateCallback: () => setState(() {}),
                                  updateOnChange: true,
                                  child: const HeaderWidget(),
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .textFieldBachGround,
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Wrap(
                                              spacing: 20.0,
                                              runSpacing: 20.0,
                                              alignment: WrapAlignment.start,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              direction: Axis.horizontal,
                                              runAlignment: WrapAlignment.start,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              clipBehavior: Clip.none,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .subHeaderModel,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    const SubHeaderWidget(
                                                                  title:
                                                                      'Setting',
                                                                  showBackBtn:
                                                                      true,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    20.0,
                                                                    0.0),
                                                        child: Wrap(
                                                          spacing: 24.0,
                                                          runSpacing: 24.0,
                                                          alignment:
                                                              WrapAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              WrapCrossAlignment
                                                                  .start,
                                                          direction:
                                                              Axis.horizontal,
                                                          runAlignment:
                                                              WrapAlignment
                                                                  .center,
                                                          verticalDirection:
                                                              VerticalDirection
                                                                  .down,
                                                          clipBehavior:
                                                              Clip.none,
                                                          children: [
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .stretch,
                                                                    children: [
                                                                      SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Wrap(
                                                                              spacing: 20.0,
                                                                              runSpacing: 16.0,
                                                                              alignment: WrapAlignment.start,
                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                              direction: Axis.horizontal,
                                                                              runAlignment: WrapAlignment.start,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                Container(
                                                                                  width: 300.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Language',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 600.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      FlutterFlowDropDown<String>(
                                                                                        controller: _model.languageDropDownValueController ??= FormFieldController<String>(null),
                                                                                        options: const [
                                                                                          'English',
                                                                                          'French',
                                                                                          'Chinese'
                                                                                        ],
                                                                                        onChanged: (val) => setState(() => _model.languageDropDownValue = val),
                                                                                        width: () {
                                                                                          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                            return 200.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                            return 400.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                            return 600.0;
                                                                                          } else {
                                                                                            return 400.0;
                                                                                          }
                                                                                        }(),
                                                                                        height: 50.0,
                                                                                        textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: 'Select Language',
                                                                                        icon: Icon(
                                                                                          Icons.keyboard_arrow_down_rounded,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        elevation: 0.0,
                                                                                        borderColor: FlutterFlowTheme.of(context).neutral100,
                                                                                        borderWidth: 1.0,
                                                                                        borderRadius: 8.0,
                                                                                        margin: const EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 16.0, 4.0),
                                                                                        hidesUnderline: true,
                                                                                        isSearchable: false,
                                                                                        isMultiSelect: false,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            wrapWithModel(
                                                                              model: _model.dividerModel1,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: const DividerWidget(
                                                                                titleInLeftSide: false,
                                                                              ),
                                                                            ),
                                                                            Wrap(
                                                                              spacing: 20.0,
                                                                              runSpacing: 16.0,
                                                                              alignment: WrapAlignment.start,
                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                              direction: Axis.horizontal,
                                                                              runAlignment: WrapAlignment.start,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                Container(
                                                                                  width: 300.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Timezone',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 600.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      FlutterFlowDropDown<String>(
                                                                                        controller: _model.timezoneDropDownValueController ??= FormFieldController<String>(null),
                                                                                        options: const [
                                                                                          'US',
                                                                                          'Canada',
                                                                                          'UK'
                                                                                        ],
                                                                                        onChanged: (val) => setState(() => _model.timezoneDropDownValue = val),
                                                                                        width: () {
                                                                                          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                            return 220.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                            return 400.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                            return 600.0;
                                                                                          } else {
                                                                                            return 400.0;
                                                                                          }
                                                                                        }(),
                                                                                        height: 50.0,
                                                                                        textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: 'Select Timezone',
                                                                                        icon: Icon(
                                                                                          Icons.keyboard_arrow_down_rounded,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        elevation: 0.0,
                                                                                        borderColor: FlutterFlowTheme.of(context).neutral100,
                                                                                        borderWidth: 1.0,
                                                                                        borderRadius: 8.0,
                                                                                        margin: const EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 16.0, 4.0),
                                                                                        hidesUnderline: true,
                                                                                        isSearchable: false,
                                                                                        isMultiSelect: false,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            wrapWithModel(
                                                                              model: _model.dividerModel2,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: const DividerWidget(
                                                                                titleInLeftSide: false,
                                                                              ),
                                                                            ),
                                                                            Wrap(
                                                                              spacing: 20.0,
                                                                              runSpacing: 16.0,
                                                                              alignment: WrapAlignment.start,
                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                              direction: Axis.horizontal,
                                                                              runAlignment: WrapAlignment.start,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                Container(
                                                                                  width: 300.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Time Format',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 600.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: FlutterFlowChoiceChips(
                                                                                    options: const [
                                                                                      ChipData('24 Hourd', Icons.radio_button_checked),
                                                                                      ChipData('12 Hours', Icons.radio_button_checked)
                                                                                    ],
                                                                                    onChanged: (val) => setState(() => _model.choiceChipsValue = val?.firstOrNull),
                                                                                    selectedChipStyle: ChipStyle(
                                                                                      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      iconColor: FlutterFlowTheme.of(context).primary,
                                                                                      iconSize: 18.0,
                                                                                      labelPadding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 20.0, 10.0),
                                                                                      elevation: 0.0,
                                                                                      borderColor: FlutterFlowTheme.of(context).primary,
                                                                                      borderWidth: 1.0,
                                                                                      borderRadius: BorderRadius.circular(4.0),
                                                                                    ),
                                                                                    unselectedChipStyle: ChipStyle(
                                                                                      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                      iconColor: FlutterFlowTheme.of(context).neutral100,
                                                                                      iconSize: 18.0,
                                                                                      labelPadding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 20.0, 10.0),
                                                                                      elevation: 0.0,
                                                                                      borderColor: FlutterFlowTheme.of(context).neutral100,
                                                                                      borderRadius: BorderRadius.circular(4.0),
                                                                                    ),
                                                                                    chipSpacing: 24.0,
                                                                                    rowSpacing: 16.0,
                                                                                    multiselect: false,
                                                                                    alignment: WrapAlignment.start,
                                                                                    controller: _model.choiceChipsValueController ??= FormFieldController<List<String>>(
                                                                                      [],
                                                                                    ),
                                                                                    wrapped: true,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            wrapWithModel(
                                                                              model: _model.dividerModel3,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: const DividerWidget(
                                                                                titleInLeftSide: false,
                                                                              ),
                                                                            ),
                                                                            Wrap(
                                                                              spacing: 20.0,
                                                                              runSpacing: 16.0,
                                                                              alignment: WrapAlignment.start,
                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                              direction: Axis.horizontal,
                                                                              runAlignment: WrapAlignment.start,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                Container(
                                                                                  width: 300.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Notification',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 600.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      FlutterFlowDropDown<String>(
                                                                                        controller: _model.notificationDropDownValueController ??= FormFieldController<String>(null),
                                                                                        options: const [
                                                                                          'Active for all activity',
                                                                                          'Active for all activity 2',
                                                                                          'Active for all activity 3'
                                                                                        ],
                                                                                        onChanged: (val) => setState(() => _model.notificationDropDownValue = val),
                                                                                        width: () {
                                                                                          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                            return 220.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                            return 400.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                            return 600.0;
                                                                                          } else {
                                                                                            return 400.0;
                                                                                          }
                                                                                        }(),
                                                                                        height: 50.0,
                                                                                        textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: 'Select Notification',
                                                                                        icon: Icon(
                                                                                          Icons.keyboard_arrow_down_rounded,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        elevation: 0.0,
                                                                                        borderColor: FlutterFlowTheme.of(context).neutral100,
                                                                                        borderWidth: 1.0,
                                                                                        borderRadius: 8.0,
                                                                                        margin: const EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 16.0, 4.0),
                                                                                        hidesUnderline: true,
                                                                                        isSearchable: false,
                                                                                        isMultiSelect: false,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            wrapWithModel(
                                                                              model: _model.dividerModel4,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: const DividerWidget(
                                                                                titleInLeftSide: false,
                                                                              ),
                                                                            ),
                                                                            Wrap(
                                                                              spacing: 20.0,
                                                                              runSpacing: 16.0,
                                                                              alignment: WrapAlignment.start,
                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                              direction: Axis.horizontal,
                                                                              runAlignment: WrapAlignment.start,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                Container(
                                                                                  width: 300.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Location',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 600.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      FlutterFlowDropDown<String>(
                                                                                        controller: _model.locationDropDownValueController ??= FormFieldController<String>(null),
                                                                                        options: const [
                                                                                          'Active when the app is used',
                                                                                          'Active when the app is used 2',
                                                                                          'Active when the app is used 3'
                                                                                        ],
                                                                                        onChanged: (val) => setState(() => _model.locationDropDownValue = val),
                                                                                        width: () {
                                                                                          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                            return 220.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                            return 400.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                            return 600.0;
                                                                                          } else {
                                                                                            return 400.0;
                                                                                          }
                                                                                        }(),
                                                                                        height: 50.0,
                                                                                        textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: 'Select Location',
                                                                                        icon: Icon(
                                                                                          Icons.keyboard_arrow_down_rounded,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        elevation: 0.0,
                                                                                        borderColor: FlutterFlowTheme.of(context).neutral100,
                                                                                        borderWidth: 1.0,
                                                                                        borderRadius: 8.0,
                                                                                        margin: const EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 16.0, 4.0),
                                                                                        hidesUnderline: true,
                                                                                        isSearchable: false,
                                                                                        isMultiSelect: false,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    context.pushNamed('Home');
                                                                                  },
                                                                                  text: 'Save Change',
                                                                                  options: FFButtonOptions(
                                                                                    width: 200.0,
                                                                                    height: 50.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 13.0, 24.0, 13.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: FlutterFlowTheme.of(context).white0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    elevation: 0.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ].divide(const SizedBox(height: 24.0)),
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            16.0)),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        24.0)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ]
                                                        .divide(const SizedBox(
                                                            height: 24.0))
                                                        .addToStart(const SizedBox(
                                                            height: 12.0))
                                                        .addToEnd(const SizedBox(
                                                            height: 24.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]
                                            .divide(const SizedBox(height: 20.0))
                                            .addToStart(const SizedBox(height: 20.0))
                                            .addToEnd(const SizedBox(height: 20.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                    ))
                      Align(
                        alignment: const AlignmentDirectional(0.8, -0.97),
                        child: wrapWithModel(
                          model: _model.navigatorModel,
                          updateCallback: () => setState(() {}),
                          child: const NavigatorWidget(
                            expanded: true,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
