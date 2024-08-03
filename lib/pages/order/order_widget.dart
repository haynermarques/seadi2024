import '/components/divider/divider_widget.dart';
import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/navigator_widget.dart';
import '/components/property_card/property_card_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'order_model.dart';
export 'order_model.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({super.key});

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  late OrderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderModel());

    _model.nameTextFieldTextController ??= TextEditingController();
    _model.nameTextFieldFocusNode ??= FocusNode();

    _model.phoneTextFieldTextController ??= TextEditingController();
    _model.phoneTextFieldFocusNode ??= FocusNode();

    _model.emailTextFieldTextController ??= TextEditingController();
    _model.emailTextFieldFocusNode ??= FocusNode();

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
        title: 'Order',
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
                                                  width: 750.0,
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
                                                                      'Order',
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
                                                              width: 750.0,
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
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Check In Date',
                                                                            style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      FlutterFlowCalendar(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        iconColor:
                                                                            FlutterFlowTheme.of(context).secondaryText,
                                                                        weekFormat:
                                                                            true,
                                                                        weekStartsMonday:
                                                                            false,
                                                                        twoRowHeader:
                                                                            true,
                                                                        rowHeight:
                                                                            64.0,
                                                                        onChange:
                                                                            (DateTimeRange?
                                                                                newSelectedDate) {
                                                                          setState(() =>
                                                                              _model.calendarSelectedDay = newSelectedDate);
                                                                        },
                                                                        titleStyle: FlutterFlowTheme.of(context)
                                                                            .headlineSmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        dayOfWeekStyle: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        dateStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        selectedDateStyle: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        inactiveDateStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: FlutterFlowTheme.of(context).neutral300,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            16.0)),
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .stretch,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Order Profile',
                                                                            style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Wrap(
                                                                        spacing:
                                                                            20.0,
                                                                        runSpacing:
                                                                            20.0,
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
                                                                            width:
                                                                                170.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Title',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                FlutterFlowDropDown<String>(
                                                                                  controller: _model.titleDropDownValueController ??= FormFieldController<String>(null),
                                                                                  options: const [
                                                                                    'Sir',
                                                                                    'Madam',
                                                                                    'Mr',
                                                                                    'Mrs'
                                                                                  ],
                                                                                  onChanged: (val) => setState(() => _model.titleDropDownValue = val),
                                                                                  width: 170.0,
                                                                                  height: 45.0,
                                                                                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: FlutterFlowTheme.of(context).neutral500,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  hintText: 'Please Select',
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_arrow_down_sharp,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    size: 20.0,
                                                                                  ),
                                                                                  fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  elevation: 0.0,
                                                                                  borderColor: FlutterFlowTheme.of(context).neutral100,
                                                                                  borderWidth: 1.0,
                                                                                  borderRadius: 4.0,
                                                                                  margin: const EdgeInsetsDirectional.fromSTEB(14.0, 4.0, 10.0, 4.0),
                                                                                  hidesUnderline: true,
                                                                                  isSearchable: false,
                                                                                  isMultiSelect: false,
                                                                                ),
                                                                              ].divide(const SizedBox(height: 10.0)),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                480.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Full Name',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                SizedBox(
                                                                                  width: double.infinity,
                                                                                  child: TextFormField(
                                                                                    controller: _model.nameTextFieldTextController,
                                                                                    focusNode: _model.nameTextFieldFocusNode,
                                                                                    onChanged: (_) => EasyDebounce.debounce(
                                                                                      '_model.nameTextFieldTextController',
                                                                                      const Duration(milliseconds: 500),
                                                                                      () => setState(() {}),
                                                                                    ),
                                                                                    autofocus: false,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintText: 'Full Name',
                                                                                      hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).neutral100,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(4.0),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).neutral900,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(4.0),
                                                                                      ),
                                                                                      errorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(4.0),
                                                                                      ),
                                                                                      focusedErrorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(4.0),
                                                                                      ),
                                                                                      contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                    validator: _model.nameTextFieldTextControllerValidator.asValidator(context),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 10.0)),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                170.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Code Country',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                FlutterFlowDropDown<String>(
                                                                                  controller: _model.codeDropDownValueController ??= FormFieldController<String>(null),
                                                                                  options: const [
                                                                                    'IDN +62',
                                                                                    'USA +1',
                                                                                    'UK +40'
                                                                                  ],
                                                                                  onChanged: (val) => setState(() => _model.codeDropDownValue = val),
                                                                                  width: 170.0,
                                                                                  height: 45.0,
                                                                                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: FlutterFlowTheme.of(context).neutral500,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  hintText: 'Please Select',
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_arrow_down_sharp,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    size: 20.0,
                                                                                  ),
                                                                                  fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  elevation: 0.0,
                                                                                  borderColor: FlutterFlowTheme.of(context).neutral100,
                                                                                  borderWidth: 1.0,
                                                                                  borderRadius: 4.0,
                                                                                  margin: const EdgeInsetsDirectional.fromSTEB(14.0, 4.0, 10.0, 4.0),
                                                                                  hidesUnderline: true,
                                                                                  isSearchable: false,
                                                                                  isMultiSelect: false,
                                                                                ),
                                                                              ].divide(const SizedBox(height: 10.0)),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                480.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Phone Number',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                SizedBox(
                                                                                  width: double.infinity,
                                                                                  child: TextFormField(
                                                                                    controller: _model.phoneTextFieldTextController,
                                                                                    focusNode: _model.phoneTextFieldFocusNode,
                                                                                    onChanged: (_) => EasyDebounce.debounce(
                                                                                      '_model.phoneTextFieldTextController',
                                                                                      const Duration(milliseconds: 500),
                                                                                      () => setState(() {}),
                                                                                    ),
                                                                                    autofocus: false,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintText: '0833-1231-9853-1285',
                                                                                      hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).neutral100,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(4.0),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).neutral900,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(4.0),
                                                                                      ),
                                                                                      errorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(4.0),
                                                                                      ),
                                                                                      focusedErrorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(4.0),
                                                                                      ),
                                                                                      contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    keyboardType: TextInputType.phone,
                                                                                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                    validator: _model.phoneTextFieldTextControllerValidator.asValidator(context),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 10.0)),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                450.0,
                                                                            constraints:
                                                                                const BoxConstraints(
                                                                              minWidth: 250.0,
                                                                              maxWidth: double.infinity,
                                                                            ),
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Email Address',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Container(
                                                                                  constraints: const BoxConstraints(
                                                                                    maxWidth: 300.0,
                                                                                  ),
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: SizedBox(
                                                                                    width: double.infinity,
                                                                                    child: TextFormField(
                                                                                      controller: _model.emailTextFieldTextController,
                                                                                      focusNode: _model.emailTextFieldFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.emailTextFieldTextController',
                                                                                        const Duration(milliseconds: 500),
                                                                                        () => setState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: 'Email Address',
                                                                                        hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).neutral100,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).neutral900,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      keyboardType: TextInputType.emailAddress,
                                                                                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      validator: _model.emailTextFieldTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 10.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            16.0)),
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .stretch,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Payment Method',
                                                                            style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      FlutterFlowChoiceChips(
                                                                        options: const [
                                                                          ChipData(
                                                                              'Transfer',
                                                                              Icons.radio_button_checked),
                                                                          ChipData(
                                                                              'Debit Card',
                                                                              Icons.radio_button_checked),
                                                                          ChipData(
                                                                              'Credit Card',
                                                                              Icons.radio_button_checked),
                                                                          ChipData(
                                                                              'COD',
                                                                              Icons.radio_button_checked)
                                                                        ],
                                                                        onChanged:
                                                                            (val) =>
                                                                                setState(() => _model.choiceChipsValue = val?.firstOrNull),
                                                                        selectedChipStyle:
                                                                            ChipStyle(
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          iconColor:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          iconSize:
                                                                              18.0,
                                                                          labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              10.0,
                                                                              20.0,
                                                                              10.0),
                                                                          elevation:
                                                                              0.0,
                                                                          borderColor:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          borderWidth:
                                                                              1.0,
                                                                          borderRadius:
                                                                              BorderRadius.circular(4.0),
                                                                        ),
                                                                        unselectedChipStyle:
                                                                            ChipStyle(
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                          iconColor:
                                                                              FlutterFlowTheme.of(context).neutral100,
                                                                          iconSize:
                                                                              18.0,
                                                                          labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              10.0,
                                                                              20.0,
                                                                              10.0),
                                                                          elevation:
                                                                              0.0,
                                                                          borderColor:
                                                                              FlutterFlowTheme.of(context).neutral100,
                                                                          borderRadius:
                                                                              BorderRadius.circular(4.0),
                                                                        ),
                                                                        chipSpacing:
                                                                            24.0,
                                                                        rowSpacing:
                                                                            16.0,
                                                                        multiselect:
                                                                            false,
                                                                        alignment:
                                                                            WrapAlignment.start,
                                                                        controller:
                                                                            _model.choiceChipsValueController ??=
                                                                                FormFieldController<List<String>>(
                                                                          [],
                                                                        ),
                                                                        wrapped:
                                                                            true,
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
                                                Container(
                                                  width: 250.0,
                                                  constraints: const BoxConstraints(
                                                    maxWidth: 500.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .textFieldBachGround,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: Wrap(
                                                    spacing: 0.0,
                                                    runSpacing: 0.0,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    crossAxisAlignment:
                                                        WrapCrossAlignment
                                                            .start,
                                                    direction: Axis.horizontal,
                                                    runAlignment:
                                                        WrapAlignment.start,
                                                    verticalDirection:
                                                        VerticalDirection.down,
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 250.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          20.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Text(
                                                                          'Booking Detail',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .headlineMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .propertyCardModel,
                                                                      updateCallback:
                                                                          () =>
                                                                              setState(() {}),
                                                                      child:
                                                                          const PropertyCardWidget(
                                                                        image:
                                                                            'https://images.unsplash.com/photo-1620332372374-f108c53d2e03?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMHx8aG9zdGVsfGVufDB8fHx8MTY5ODkxMzc1NXww&ixlib=rb-4.0.3&q=80&w=1080',
                                                                        title:
                                                                            'Star Sun Hotel & Apartment',
                                                                        address:
                                                                            'Jl Letda Nasir 45 RT 001/02',
                                                                        bedsNum:
                                                                            2,
                                                                        bathNum:
                                                                            3,
                                                                        sqfNum:
                                                                            24,
                                                                        price:
                                                                            80.0,
                                                                        favorited:
                                                                            false,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            24.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .stretch,
                                                                      children:
                                                                          [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Text(
                                                                                'Check-in',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: FlutterFlowTheme.of(context).neutral500,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Flexible(
                                                                              child: Text(
                                                                                '15 Jan 2022',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Text(
                                                                                'Check-in',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: FlutterFlowTheme.of(context).neutral500,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Flexible(
                                                                              child: Text(
                                                                                '15 Jan 2022',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.dividerModel,
                                                                          updateCallback: () =>
                                                                              setState(() {}),
                                                                          child:
                                                                              const DividerWidget(
                                                                            titleInLeftSide:
                                                                                false,
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Text(
                                                                                'Total',
                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Flexible(
                                                                              child: Text(
                                                                                '\$400',
                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              height: 12.0)),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Flexible(
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      context.pushNamed(
                                                                          'Payment');
                                                                    },
                                                                    text:
                                                                        'Go to Payment',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          40.0,
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          9.0,
                                                                          16.0,
                                                                          9.0),
                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      elevation:
                                                                          0.0,
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              4.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 16.0)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
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
