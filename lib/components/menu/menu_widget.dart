import '/components/menu_item/menu_item_widget.dart';
import '/components/sub_menu_item/sub_menu_item_widget.dart';
import '/components/user_row_card_res_start_chat/user_row_card_res_start_chat_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({
    super.key,
    required this.activePageName,
    bool? pageIsInSubMenu,
    this.subMenuName,
  }) : pageIsInSubMenu = pageIsInSubMenu ?? false;

  final String? activePageName;
  final bool pageIsInSubMenu;
  final String? subMenuName;

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> with TickerProviderStateMixin {
  late MenuModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: () {
        if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
          return 90.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
          return 280.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
          return 290.0;
        } else if (FFAppState().hideMenu) {
          return 90.0;
        } else {
          return 290.0;
        }
      }(),
      height: double.infinity,
      constraints: const BoxConstraints(
        minWidth: 90.0,
        maxWidth: 290.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 33.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 111.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 111.0;
                    } else if (FFAppState().hideMenu) {
                      return 33.0;
                    } else {
                      return 111.0;
                    }
                  }(),
                  height: 111.0,
                  decoration: const BoxDecoration(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/LOGO-SEADI.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ].divide(const SizedBox(width: 4.0)),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (widget.activePageName == 'Abre') {
                                    return;
                                  }

                                  context.pushNamed('Abre');

                                  return;
                                },
                                child: wrapWithModel(
                                  model: _model.menuItemModel1,
                                  updateCallback: () => setState(() {}),
                                  child: MenuItemWidget(
                                    isActivePage:
                                        widget.activePageName == 'Abre',
                                    text: 'Dashboard',
                                    icon: const Icon(
                                      Icons.grid_view,
                                      size: 24.0,
                                    ),
                                    hasNumberTag: false,
                                    tagColor: const Color(0xFFDA1919),
                                    hasSubMenu: false,
                                    subMenuExpanded: false,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (widget.activePageName == 'Servidores') {
                                    return;
                                  }

                                  context.goNamed('Servidores');

                                  return;
                                },
                                child: wrapWithModel(
                                  model: _model.menuItemModel2,
                                  updateCallback: () => setState(() {}),
                                  child: MenuItemWidget(
                                    isActivePage:
                                        widget.activePageName == 'Servidores',
                                    text: 'Servidores',
                                    icon: Icon(
                                      Icons.groups_sharp,
                                      color:
                                          FlutterFlowTheme.of(context).gray400,
                                      size: 24.0,
                                    ),
                                    hasNumberTag: false,
                                    number: 1,
                                    tagColor:
                                        FlutterFlowTheme.of(context).primary,
                                    hasSubMenu: false,
                                    subMenuExpanded: false,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.subMenuOrders =
                                          !_model.subMenuOrders;
                                      setState(() {});
                                    },
                                    child: wrapWithModel(
                                      model: _model.menuItemModel3,
                                      updateCallback: () => setState(() {}),
                                      child: MenuItemWidget(
                                        isActivePage:
                                            widget.activePageName == 'Ativos',
                                        text: 'Contratos',
                                        icon: Icon(
                                          Icons.receipt_long_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .gray400,
                                          size: 24.0,
                                        ),
                                        hasNumberTag: false,
                                        number: 5,
                                        tagColor: FlutterFlowTheme.of(context)
                                            .secondary,
                                        hasSubMenu: true,
                                        subMenuExpanded:
                                            _model.subMenuOrders == true,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0x80EFF3FA),
                                      borderRadius: BorderRadius.circular(2.0),
                                    ),
                                    child: Visibility(
                                      visible: _model.subMenuOrders == true,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                width: 50.0,
                                                height: 1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .neutral200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                              ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                              ))
                                                Container(
                                                  width: 200.0,
                                                  height: 1.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .neutral200,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                ),
                                            ],
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.goNamed('Cont_ativos');
                                            },
                                            child: wrapWithModel(
                                              model: _model.subMenuItemModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SubMenuItemWidget(
                                                text: 'Todos',
                                                icon: Icon(
                                                  Icons.receipt_long,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context
                                                  .pushNamed('ContratosBusca');
                                            },
                                            child: wrapWithModel(
                                              model: _model.subMenuItemModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SubMenuItemWidget(
                                                text: 'Buscar',
                                                icon: Icon(
                                                  Icons.location_searching,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.subMenuItemModel3,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: SubMenuItemWidget(
                                              text: 'Formalização',
                                              icon: Icon(
                                                Icons.library_books_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 18.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ).animateOnPageLoad(animationsMap[
                                          'columnOnPageLoadAnimation']!),
                                    ),
                                  ),
                                ],
                              ),
                              wrapWithModel(
                                model: _model.menuItemModel4,
                                updateCallback: () => setState(() {}),
                                child: MenuItemWidget(
                                  isActivePage: false,
                                  text: 'Patrimônio',
                                  icon: Icon(
                                    Icons.dashboard,
                                    color: FlutterFlowTheme.of(context).gray400,
                                    size: 24.0,
                                  ),
                                  hasNumberTag: false,
                                  hasSubMenu: false,
                                  subMenuExpanded: false,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.menuItemModel5,
                                updateCallback: () => setState(() {}),
                                child: MenuItemWidget(
                                  isActivePage: false,
                                  text: 'Estoque',
                                  icon: Icon(
                                    Icons.all_inbox,
                                    color: FlutterFlowTheme.of(context).gray400,
                                    size: 24.0,
                                  ),
                                  hasNumberTag: false,
                                  hasSubMenu: false,
                                  subMenuExpanded: false,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.menuItemModel6,
                                updateCallback: () => setState(() {}),
                                child: MenuItemWidget(
                                  isActivePage: false,
                                  text: 'Veículos',
                                  icon: Icon(
                                    Icons.car_rental,
                                    color: FlutterFlowTheme.of(context).gray400,
                                    size: 24.0,
                                  ),
                                  hasNumberTag: false,
                                  hasSubMenu: false,
                                  subMenuExpanded: false,
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.goNamed('Message');
                                },
                                child: wrapWithModel(
                                  model: _model.menuItemModel7,
                                  updateCallback: () => setState(() {}),
                                  child: MenuItemWidget(
                                    isActivePage: false,
                                    text: 'Mensagens',
                                    icon: Icon(
                                      Icons.message_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).gray400,
                                      size: 24.0,
                                    ),
                                    hasNumberTag: true,
                                    number: 3,
                                    tagColor:
                                        FlutterFlowTheme.of(context).tertiary,
                                    hasSubMenu: false,
                                    subMenuExpanded: false,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.goNamed('MyProfile');
                                },
                                child: wrapWithModel(
                                  model: _model.menuItemModel8,
                                  updateCallback: () => setState(() {}),
                                  child: MenuItemWidget(
                                    isActivePage: false,
                                    text: 'Configurações',
                                    icon: Icon(
                                      Icons.grading_sharp,
                                      color:
                                          FlutterFlowTheme.of(context).gray400,
                                      size: 24.0,
                                    ),
                                    hasNumberTag: false,
                                    number: 3,
                                    tagColor:
                                        FlutterFlowTheme.of(context).tertiary,
                                    hasSubMenu: false,
                                    subMenuExpanded: false,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 44.0,
                                          height: 1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .textFieldBachGround,
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                        if (FFAppState().drawer &&
                                            responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                            ))
                                          Container(
                                            width: 200.0,
                                            height: 1.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textFieldBachGround,
                                            ),
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 44.0,
                                          height: 44.0,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Icon(
                                            Icons.person_add_alt,
                                            color: FlutterFlowTheme.of(context)
                                                .neutral400,
                                            size: 20.0,
                                          ),
                                        ),
                                        if (!FFAppState().hideMenu &&
                                            responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                            ))
                                          Container(
                                            width: 200.0,
                                            height: 44.0,
                                            decoration: const BoxDecoration(),
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Agentes ativos',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .neutral400,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                AlignedTooltip(
                                                  content: Padding(
                                                    padding:
                                                        const EdgeInsets.all(4.0),
                                                    child: Text(
                                                      'Find to start conversation',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodySmall
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            fontSize: 11.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  offset: 4.0,
                                                  preferredDirection:
                                                      AxisDirection.right,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .textFieldBachGround,
                                                  elevation: 4.0,
                                                  tailBaseWidth: 16.0,
                                                  tailLength: 8.0,
                                                  waitDuration: const Duration(
                                                      milliseconds: 50),
                                                  showDuration: const Duration(
                                                      milliseconds: 400),
                                                  triggerMode:
                                                      TooltipTriggerMode.tap,
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 8.0,
                                                    buttonSize: 32.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .neutral100,
                                                    icon: Icon(
                                                      Icons
                                                          .manage_search_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 16.0,
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
                                      ],
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.userRowCardResStartChatModel1,
                                    updateCallback: () => setState(() {}),
                                    child: UserRowCardResStartChatWidget(
                                      avatar:
                                          'https://images.unsplash.com/photo-1599566150163-29194dcaad36?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxhdmF0YXJ8ZW58MHx8fHwxNjk4NDg3MTY2fDA&ixlib=rb-4.0.3&q=80&w=400',
                                      displayName: 'Marcelo Lopes',
                                      email: 'marcelo@email.com',
                                      actionStartChat: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.userRowCardResStartChatModel2,
                                    updateCallback: () => setState(() {}),
                                    child: UserRowCardResStartChatWidget(
                                      avatar:
                                          'https://images.unsplash.com/photo-1580489944761-15a19d654956?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxhdmF0YXJ8ZW58MHx8fHwxNjk4NDg3MTY2fDA&ixlib=rb-4.0.3&q=80&w=400',
                                      displayName: 'Anne Morison',
                                      email: 'anne@email.com',
                                      actionStartChat: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.userRowCardResStartChatModel3,
                                    updateCallback: () => setState(() {}),
                                    child: UserRowCardResStartChatWidget(
                                      avatar:
                                          'https://images.unsplash.com/photo-1628157588553-5eeea00af15c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNHx8YXZhdGFyfGVufDB8fHx8MTY5ODQ4NzE2Nnww&ixlib=rb-4.0.3&q=80&w=400',
                                      displayName: 'Jose Ricco',
                                      email: 'sozie@email.com',
                                      actionStartChat: () async {},
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(height: 8.0)),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                      ))
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (_model.showUpgrade)
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .textFieldBachGround,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'AI Agent!',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  'Upgrade and get the AI agent, Buy your agent that works for you 24/7',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        lineHeight: 1.3,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ].divide(const SizedBox(height: 8.0)),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(1.0, -1.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 8.0,
                                        buttonSize: 32.0,
                                        hoverColor: Colors.transparent,
                                        icon: Icon(
                                          Icons.close_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 14.0,
                                        ),
                                        onPressed: () async {
                                          _model.showUpgrade = false;
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      Container(
                        width: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 33.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 280.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 280.0;
                          } else {
                            return 280.0;
                          }
                        }(),
                        height: 100.0,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (!FFAppState().hideMenu &&
                                responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 21.0,
                                    height: 50.0,
                                    decoration: const BoxDecoration(),
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.logout,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 21.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 50.0,
                                    decoration: const BoxDecoration(),
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Logout',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Container(
                                          width: 21.0,
                                          height: 50.0,
                                          decoration: const BoxDecoration(),
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                FFAppState().hideMenu =
                                                    !(FFAppState().hideMenu ??
                                                        true);
                                                setState(() {});
                                              },
                                              child: Icon(
                                                Icons.menu_open_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 21.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            if (responsiveVisibility(
                              context: context,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 22.0, 0.0, 0.0),
                                        child: Container(
                                          width: 21.0,
                                          height: 22.0,
                                          decoration: const BoxDecoration(),
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.logout,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              size: 21.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
                                        Container(
                                          width: 33.0,
                                          height: 22.0,
                                          decoration: const BoxDecoration(),
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: const BoxDecoration(),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
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
                                                      FFAppState().hideMenu =
                                                          !(FFAppState()
                                                                  .hideMenu ??
                                                              true);
                                                      setState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.menu_open_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 21.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            if (FFAppState().hideMenu &&
                                responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 21.0,
                                        height: 22.0,
                                        decoration: const BoxDecoration(),
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Icon(
                                            Icons.logout,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 21.0,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 33.0,
                                        height: 22.0,
                                        decoration: const BoxDecoration(),
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
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
                                                    FFAppState().hideMenu =
                                                        !(FFAppState()
                                                                .hideMenu ??
                                                            true);
                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.menu_open_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 21.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ].divide(const SizedBox(height: 24.0)).addToStart(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
