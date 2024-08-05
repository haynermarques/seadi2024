import '/components/divider/divider_widget.dart';
import '/components/header/header_widget.dart';
import '/components/item_card/item_card_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/property_card/property_card_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

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
        title: 'Home',
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
                                            child: wrapWithModel(
                                              model: _model.subHeaderModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const SubHeaderWidget(
                                                title:
                                                    'Find Your Best Real Estate',
                                                showBackBtn: false,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Container(
                                              width: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          child: Wrap(
                                                            spacing: 12.0,
                                                            runSpacing: 12.0,
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
                                                                    .start,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children: [
                                                              Container(
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth: functions.responsiveMaxWidth(
                                                                      1.0,
                                                                      2.0,
                                                                      1,
                                                                      MediaQuery.sizeOf(
                                                                              context)
                                                                          .width,
                                                                      100.0),
                                                                ),
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Wrap(
                                                                        spacing:
                                                                            12.0,
                                                                        runSpacing:
                                                                            12.0,
                                                                        alignment:
                                                                            WrapAlignment.start,
                                                                        crossAxisAlignment:
                                                                            WrapCrossAlignment.start,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        runAlignment:
                                                                            WrapAlignment.start,
                                                                        verticalDirection:
                                                                            VerticalDirection.down,
                                                                        clipBehavior:
                                                                            Clip.none,
                                                                        children: [
                                                                          Container(
                                                                            constraints:
                                                                                BoxConstraints(
                                                                              maxWidth: functions.responsiveMaxWidth(1.0, 4.0, 2, MediaQuery.sizeOf(context).width, 124.0),
                                                                            ),
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                AlignedTooltip(
                                                                                  content: Padding(
                                                                                    padding: const EdgeInsets.all(4.0),
                                                                                    child: Text(
                                                                                      'Find your Building here',
                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  offset: 4.0,
                                                                                  preferredDirection: AxisDirection.down,
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  elevation: 4.0,
                                                                                  tailBaseWidth: 24.0,
                                                                                  tailLength: 12.0,
                                                                                  waitDuration: const Duration(milliseconds: 100),
                                                                                  showDuration: const Duration(milliseconds: 1500),
                                                                                  triggerMode: TooltipTriggerMode.tap,
                                                                                  child: Container(
                                                                                    width: 40.0,
                                                                                    height: 40.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).neutral200,
                                                                                      ),
                                                                                    ),
                                                                                    child: Icon(
                                                                                      Icons.home_work_outlined,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      size: 16.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: FlutterFlowDropDown<String>(
                                                                                    controller: _model.dropDownValueController1 ??= FormFieldController<String>(null),
                                                                                    options: const [
                                                                                      'House',
                                                                                      'Villa',
                                                                                      'Apartment'
                                                                                    ],
                                                                                    onChanged: (val) => setState(() => _model.dropDownValue1 = val),
                                                                                    width: 160.0,
                                                                                    height: 40.0,
                                                                                    textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: FlutterFlowTheme.of(context).neutral500,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    hintText: 'Rent a Building',
                                                                                    icon: Icon(
                                                                                      Icons.keyboard_arrow_down_sharp,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      size: 16.0,
                                                                                    ),
                                                                                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    elevation: 0.0,
                                                                                    borderColor: FlutterFlowTheme.of(context).neutral200,
                                                                                    borderWidth: 1.0,
                                                                                    borderRadius: 8.0,
                                                                                    margin: const EdgeInsetsDirectional.fromSTEB(14.0, 4.0, 10.0, 4.0),
                                                                                    hidesUnderline: true,
                                                                                    isSearchable: false,
                                                                                    isMultiSelect: false,
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(width: 12.0)),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            constraints:
                                                                                BoxConstraints(
                                                                              maxWidth: functions.responsiveMaxWidth(1.0, 4.0, 2, MediaQuery.sizeOf(context).width, 124.0),
                                                                            ),
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: 40.0,
                                                                                  height: 40.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).neutral200,
                                                                                    ),
                                                                                  ),
                                                                                  child: Icon(
                                                                                    Icons.calendar_month_outlined,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    size: 16.0,
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: FlutterFlowDropDown<String>(
                                                                                    controller: _model.dropDownValueController2 ??= FormFieldController<String>(null),
                                                                                    options: const [
                                                                                      'Option 1'
                                                                                    ],
                                                                                    onChanged: (val) => setState(() => _model.dropDownValue2 = val),
                                                                                    width: 160.0,
                                                                                    height: 40.0,
                                                                                    textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: FlutterFlowTheme.of(context).neutral500,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    hintText: 'Date',
                                                                                    icon: Icon(
                                                                                      Icons.keyboard_arrow_down_sharp,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      size: 16.0,
                                                                                    ),
                                                                                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    elevation: 0.0,
                                                                                    borderColor: FlutterFlowTheme.of(context).neutral200,
                                                                                    borderWidth: 1.0,
                                                                                    borderRadius: 8.0,
                                                                                    margin: const EdgeInsetsDirectional.fromSTEB(14.0, 4.0, 10.0, 4.0),
                                                                                    hidesUnderline: true,
                                                                                    isSearchable: false,
                                                                                    isMultiSelect: false,
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(width: 12.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth: functions.responsiveMaxWidth(
                                                                      1.0,
                                                                      2.0,
                                                                      1,
                                                                      MediaQuery.sizeOf(
                                                                              context)
                                                                          .width,
                                                                      100.0),
                                                                ),
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Wrap(
                                                                        spacing:
                                                                            12.0,
                                                                        runSpacing:
                                                                            12.0,
                                                                        alignment:
                                                                            WrapAlignment.start,
                                                                        crossAxisAlignment:
                                                                            WrapCrossAlignment.start,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        runAlignment:
                                                                            WrapAlignment.start,
                                                                        verticalDirection:
                                                                            VerticalDirection.down,
                                                                        clipBehavior:
                                                                            Clip.none,
                                                                        children: [
                                                                          Container(
                                                                            constraints:
                                                                                BoxConstraints(
                                                                              maxWidth: functions.responsiveMaxWidth(1.0, 4.0, 2, MediaQuery.sizeOf(context).width, 124.0),
                                                                            ),
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: 40.0,
                                                                                  height: 40.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).neutral200,
                                                                                    ),
                                                                                  ),
                                                                                  child: Icon(
                                                                                    Icons.location_on_outlined,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    size: 16.0,
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: FlutterFlowDropDown<String>(
                                                                                    controller: _model.dropDownValueController3 ??= FormFieldController<String>(null),
                                                                                    options: const [
                                                                                      'West',
                                                                                      'North',
                                                                                      'South',
                                                                                      'East'
                                                                                    ],
                                                                                    onChanged: (val) => setState(() => _model.dropDownValue3 = val),
                                                                                    width: 160.0,
                                                                                    height: 40.0,
                                                                                    textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: FlutterFlowTheme.of(context).neutral500,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    hintText: 'Location',
                                                                                    icon: Icon(
                                                                                      Icons.keyboard_arrow_down,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      size: 22.0,
                                                                                    ),
                                                                                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    elevation: 0.0,
                                                                                    borderColor: FlutterFlowTheme.of(context).neutral200,
                                                                                    borderWidth: 1.0,
                                                                                    borderRadius: 8.0,
                                                                                    margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 8.0, 4.0),
                                                                                    hidesUnderline: true,
                                                                                    isSearchable: false,
                                                                                    isMultiSelect: false,
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(width: 12.0)),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            constraints:
                                                                                BoxConstraints(
                                                                              maxWidth: functions.responsiveMaxWidth(1.0, 4.0, 2, MediaQuery.sizeOf(context).width, 124.0),
                                                                            ),
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      context.pushNamed('Explore');
                                                                                    },
                                                                                    text: 'Search',
                                                                                    options: FFButtonOptions(
                                                                                      height: 40.0,
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(24.0, 13.0, 24.0, 13.0),
                                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
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
                                                                                ),
                                                                                FlutterFlowIconButton(
                                                                                  borderColor: FlutterFlowTheme.of(context).neutral200,
                                                                                  borderRadius: 8.0,
                                                                                  borderWidth: 1.0,
                                                                                  buttonSize: 40.0,
                                                                                  fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  icon: Icon(
                                                                                    Icons.filter_list,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    size: 16.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    context.pushNamed('OrderHistory');
                                                                                  },
                                                                                ),
                                                                              ].divide(const SizedBox(width: 12.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    child: wrapWithModel(
                                                      model:
                                                          _model.dividerModel,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child: const DividerWidget(
                                                        titleInLeftSide: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Wrap(
                                                      spacing: 24.0,
                                                      runSpacing: 16.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .center,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                                'DetailBuilding');
                                                          },
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .propertyCardModel1,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                const PropertyCardWidget(
                                                              image:
                                                                  'https://images.unsplash.com/photo-1479839672679-a46483c0e7c8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw5fHxidWlsZGluZ3xlbnwwfHx8fDE2OTgzNDgyMTB8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                              title:
                                                                  'Star Sun Hotel & Apartment',
                                                              price: 78.0,
                                                              address:
                                                                  '766 Stter St, San Franciscuo, California',
                                                              bedsNum: 3,
                                                              bathNum: 2,
                                                              sqfNum: 280,
                                                              favorited: false,
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                                'DetailBuilding');
                                                          },
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .propertyCardModel2,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                const PropertyCardWidget(
                                                              image:
                                                                  'https://images.unsplash.com/photo-1487958449943-2429e8be8625?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNHx8YnVpbGRpbmd8ZW58MHx8fHwxNjk4MzQ4MjEwfDA&ixlib=rb-4.0.3&q=80&w=1080',
                                                              title:
                                                                  'Grand Hotel & Apartment',
                                                              price: 56.0,
                                                              address:
                                                                  '58 Middle Point Rd, San Francisco, California',
                                                              bedsNum: 2,
                                                              bathNum: 1,
                                                              sqfNum: 167,
                                                              favorited: false,
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                                'DetailBuilding');
                                                          },
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .propertyCardModel3,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                const PropertyCardWidget(
                                                              image:
                                                                  'https://images.unsplash.com/photo-1497465689543-5940d3cede89?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMnx8YnVpbGRpbmd8ZW58MHx8fHwxNjk4MzQ4MjEwfDA&ixlib=rb-4.0.3&q=80&w=1080',
                                                              title:
                                                                  'Delux Hotel & Apartment',
                                                              price: 45.0,
                                                              address:
                                                                  '66 Ceres St, San Francisco, California(CA)',
                                                              bedsNum: 1,
                                                              bathNum: 1,
                                                              sqfNum: 112,
                                                              favorited: false,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 40.0,
                                                          height: 40.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                blurRadius:
                                                                    25.0,
                                                                color: Color(
                                                                    0x1F000000),
                                                                offset: Offset(
                                                                  0.0,
                                                                  9.0,
                                                                ),
                                                                spreadRadius:
                                                                    0.0,
                                                              )
                                                            ],
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderRadius: 20.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            icon: Icon(
                                                              Icons
                                                                  .chevron_right,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 24.0,
                                                            ),
                                                            onPressed: () {
                                                              print(
                                                                  'IconButton pressed ...');
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ]
                                                    .divide(
                                                        const SizedBox(height: 24.0))
                                                    .addToStart(
                                                        const SizedBox(height: 24.0))
                                                    .addToEnd(
                                                        const SizedBox(height: 24.0)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Wrap(
                                                            spacing: 12.0,
                                                            runSpacing: 12.0,
                                                            alignment:
                                                                WrapAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .center,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children: [
                                                              Container(
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth: functions
                                                                      .responsiveMaxWidth(
                                                                          1.0,
                                                                          2.0,
                                                                          1,
                                                                          MediaQuery.sizeOf(context)
                                                                              .width,
                                                                          56.0),
                                                                ),
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          FlutterFlowChoiceChips(
                                                                        options: const [
                                                                          ChipData(
                                                                              'Popular',
                                                                              Icons.add_outlined),
                                                                          ChipData(
                                                                              'Recommended'),
                                                                          ChipData(
                                                                              'Nearest')
                                                                        ],
                                                                        onChanged:
                                                                            (val) =>
                                                                                setState(() => _model.choiceChipsValue = val?.firstOrNull),
                                                                        selectedChipStyle:
                                                                            ChipStyle(
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).neutral200,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          iconColor:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          iconSize:
                                                                              18.0,
                                                                          elevation:
                                                                              0.0,
                                                                          borderRadius:
                                                                              BorderRadius.circular(6.0),
                                                                        ),
                                                                        unselectedChipStyle:
                                                                            ChipStyle(
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          iconColor:
                                                                              FlutterFlowTheme.of(context).neutral500,
                                                                          iconSize:
                                                                              18.0,
                                                                          elevation:
                                                                              0.0,
                                                                          borderRadius:
                                                                              BorderRadius.circular(6.0),
                                                                        ),
                                                                        chipSpacing:
                                                                            12.0,
                                                                        rowSpacing:
                                                                            12.0,
                                                                        multiselect:
                                                                            false,
                                                                        initialized:
                                                                            _model.choiceChipsValue !=
                                                                                null,
                                                                        alignment:
                                                                            WrapAlignment.start,
                                                                        controller:
                                                                            _model.choiceChipsValueController ??=
                                                                                FormFieldController<List<String>>(
                                                                          [
                                                                            'Popular'
                                                                          ],
                                                                        ),
                                                                        wrapped:
                                                                            false,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth: functions
                                                                      .responsiveMaxWidth(
                                                                          1.0,
                                                                          2.0,
                                                                          1,
                                                                          MediaQuery.sizeOf(context)
                                                                              .width,
                                                                          56.0),
                                                                ),
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child: FlutterFlowDropDown<
                                                                          String>(
                                                                        controller: _model
                                                                            .dropDownValueController4 ??= FormFieldController<
                                                                                String>(
                                                                            null),
                                                                        options: const [
                                                                          'House',
                                                                          'Villa',
                                                                          'Apartment'
                                                                        ],
                                                                        onChanged:
                                                                            (val) =>
                                                                                setState(() => _model.dropDownValue4 = val),
                                                                        width:
                                                                            160.0,
                                                                        height:
                                                                            40.0,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: FlutterFlowTheme.of(context).neutral500,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintText:
                                                                            'Most Recent',
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              16.0,
                                                                        ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).primaryBackground,
                                                                        elevation:
                                                                            0.0,
                                                                        borderColor:
                                                                            FlutterFlowTheme.of(context).neutral200,
                                                                        borderWidth:
                                                                            1.0,
                                                                        borderRadius:
                                                                            8.0,
                                                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                                                            14.0,
                                                                            4.0,
                                                                            10.0,
                                                                            4.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        isSearchable:
                                                                            false,
                                                                        isMultiSelect:
                                                                            false,
                                                                      ),
                                                                    ),
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .neutral200,
                                                                      borderRadius:
                                                                          8.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .filter_alt,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        context.pushNamed(
                                                                            'MyOrder');
                                                                      },
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      width:
                                                                          16.0)),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    child: Wrap(
                                                      spacing: 24.0,
                                                      runSpacing: 16.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .start,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .itemCardModel1,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child: const ItemCardWidget(
                                                            image:
                                                                'https://images.unsplash.com/photo-1455587734955-081b22074882?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxob3RlbHxlbnwwfHx8fDE2OTg0NTkzMzl8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                            title:
                                                                'Metro Jayakarta Hotel & Spa',
                                                            address:
                                                                'Kemal Ataturk Avenue, 10294, Indonesia',
                                                            bedsNum: 2,
                                                            bathNum: 3,
                                                            sqfNum: 24,
                                                            price: 65.55,
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .itemCardModel2,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child: const ItemCardWidget(
                                                            image:
                                                                'https://images.unsplash.com/photo-1554435493-93422e8220c8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw4fHxidWlsZGluZ3xlbnwwfHx8fDE2OTg0ODIxNTJ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                            title:
                                                                'Grand Hotel & Apartment',
                                                            address:
                                                                '58 Middle Point Rd, San Francisco, California',
                                                            bedsNum: 4,
                                                            bathNum: 2,
                                                            sqfNum: 188,
                                                            price: 236.99,
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .itemCardModel3,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child: const ItemCardWidget(
                                                            image:
                                                                'https://images.unsplash.com/photo-1527853787696-f7be74f2e39a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyM3x8aG9zdGVsfGVufDB8fHx8MTY5ODQ4MjI1MHww&ixlib=rb-4.0.3&q=80&w=1080',
                                                            title:
                                                                'Millan Hotel & Spa',
                                                            address:
                                                                '66 Ceres St, San Francisco, California(CA',
                                                            bedsNum: 3,
                                                            bathNum: 2,
                                                            sqfNum: 77,
                                                            price: 125.99,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ]
                                                    .divide(
                                                        const SizedBox(height: 24.0))
                                                    .addToStart(
                                                        const SizedBox(height: 24.0))
                                                    .addToEnd(
                                                        const SizedBox(height: 24.0)),
                                              ),
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
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
