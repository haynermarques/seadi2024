import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/navigator_widget.dart';
import '/components/notifications/notifications_widget.dart';
import '/components/order_items/order_items_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'my_order_model.dart';
export 'my_order_model.dart';

class MyOrderWidget extends StatefulWidget {
  const MyOrderWidget({super.key});

  @override
  State<MyOrderWidget> createState() => _MyOrderWidgetState();
}

class _MyOrderWidgetState extends State<MyOrderWidget> {
  late MyOrderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyOrderModel());

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
        title: 'MyOrder',
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
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return WebViewAware(
                                                          child:
                                                              GestureDetector(
                                                            onTap: () => _model
                                                                    .unfocusNode
                                                                    .canRequestFocus
                                                                ? FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode)
                                                                : FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  const NotificationsWidget(),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                  child: wrapWithModel(
                                                    model:
                                                        _model.subHeaderModel1,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: const SubHeaderWidget(
                                                      title: 'My Order',
                                                      showBackBtn: false,
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                              'VirtualTour');
                                                        },
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .orderItemsModel1,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          updateOnChange: true,
                                                          child:
                                                              OrderItemsWidget(
                                                            image:
                                                                'https://images.unsplash.com/photo-1479839672679-a46483c0e7c8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw5fHxidWlsZGluZ3xlbnwwfHx8fDE2OTkwOTk5NDZ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                            favorited: false,
                                                            roomNum: 1,
                                                            name:
                                                                'Star Sun Hotel & Apartment',
                                                            orderId: 10043432,
                                                            startDate:
                                                                getCurrentTimestamp,
                                                            endDate:
                                                                getCurrentTimestamp,
                                                            statusTitle:
                                                                'SUCCESS',
                                                            colorText:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                            colorBg:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success100,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ].divide(const SizedBox(height: 16.0)),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                wrapWithModel(
                                                  model: _model.subHeaderModel2,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: const SubHeaderWidget(
                                                    title: 'Order History',
                                                    showBackBtn: false,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                  'OrderHistory');
                                                            },
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .orderItemsModel2,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              updateOnChange:
                                                                  true,
                                                              child:
                                                                  OrderItemsWidget(
                                                                image:
                                                                    'https://images.unsplash.com/photo-1481253127861-534498168948?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMnx8YnVpbGRpbmd8ZW58MHx8fHwxNjk5MDk5OTQ2fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                                                favorited:
                                                                    false,
                                                                roomNum: 3,
                                                                name:
                                                                    'Metro Jayakarta Hotal & Spa',
                                                                orderId:
                                                                    10043132,
                                                                startDate:
                                                                    getCurrentTimestamp,
                                                                endDate:
                                                                    getCurrentTimestamp,
                                                                statusTitle:
                                                                    'SUCCESS',
                                                                colorText:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                colorBg: FlutterFlowTheme.of(
                                                                        context)
                                                                    .success100,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                  'OrderHistory');
                                                            },
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .orderItemsModel3,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  OrderItemsWidget(
                                                                image:
                                                                    'https://images.unsplash.com/photo-1560869860-136092d43283?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxncmFuZCUyMGhvdGVsfGVufDB8fHx8MTY5OTE2Mzg2N3ww&ixlib=rb-4.0.3&q=80&w=1080',
                                                                roomNum: 3,
                                                                favorited: true,
                                                                name:
                                                                    'Grand Hotel & SPA',
                                                                orderId:
                                                                    32112332,
                                                                statusTitle:
                                                                    'CANCELED',
                                                                colorText:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .error600,
                                                                colorBg: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error100,
                                                                startDate:
                                                                    getCurrentTimestamp,
                                                                endDate:
                                                                    getCurrentTimestamp,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 16.0)),
                                                ),
                                              ].divide(const SizedBox(height: 16.0)),
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
