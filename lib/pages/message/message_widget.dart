import '/components/divider/divider_widget.dart';
import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/components/message_item_widget.dart';
import '/components/navigator_widget.dart';
import '/components/sender_item_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'message_model.dart';
export 'message_model.dart';

class MessageWidget extends StatefulWidget {
  const MessageWidget({super.key});

  @override
  State<MessageWidget> createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  late MessageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageModel());

    _model.searchTextFieldTextController ??= TextEditingController();
    _model.searchTextFieldFocusNode ??= FocusNode();

    _model.messageTextFieldTextController ??= TextEditingController();
    _model.messageTextFieldFocusNode ??= FocusNode();

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
        title: 'Message',
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
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: 347.0,
                                                      height: double.infinity,
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .subHeaderModel,
                                                                      updateCallback:
                                                                          () =>
                                                                              setState(() {}),
                                                                      child:
                                                                          const SubHeaderWidget(
                                                                        title:
                                                                            'Message',
                                                                        showBackBtn:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      context.pushNamed(
                                                                          'Order');
                                                                    },
                                                                    text: 'New',
                                                                    icon: Icon(
                                                                      Icons.add,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .white0,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          40.0,
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          13.0,
                                                                          24.0,
                                                                          13.0),
                                                                      iconPadding:
                                                                          const EdgeInsets.all(
                                                                              0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).white0,
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
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            20.0,
                                                                            0.0),
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          200.0,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.searchTextFieldTextController,
                                                                        focusNode:
                                                                            _model.searchTextFieldFocusNode,
                                                                        onChanged:
                                                                            (_) =>
                                                                                EasyDebounce.debounce(
                                                                          '_model.searchTextFieldTextController',
                                                                          const Duration(
                                                                              milliseconds: 500),
                                                                          () =>
                                                                              setState(() {}),
                                                                        ),
                                                                        autofocus:
                                                                            false,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintText:
                                                                              'Search Message',
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: FlutterFlowTheme.of(context).neutral500,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).neutral100,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          filled:
                                                                              true,
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          suffixIcon:
                                                                              Icon(
                                                                            Icons.search,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).neutral500,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        validator: _model
                                                                            .searchTextFieldTextControllerValidator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            20.0,
                                                                            0.0),
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .senderItemModel1,
                                                                      updateCallback:
                                                                          () =>
                                                                              setState(() {}),
                                                                      child:
                                                                          SenderItemWidget(
                                                                        avatar:
                                                                            'https://images.unsplash.com/photo-1633332755192-727a05c4013d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHx1c2VyfGVufDB8fHx8MTY5OTE4NDcxOXww&ixlib=rb-4.0.3&q=80&w=400',
                                                                        sender:
                                                                            'Cameron Williamson',
                                                                        title:
                                                                            'What\'s the progress on that task?',
                                                                        sendDate:
                                                                            getCurrentTimestamp,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            20.0,
                                                                            0.0),
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .senderItemModel2,
                                                                      updateCallback:
                                                                          () =>
                                                                              setState(() {}),
                                                                      child:
                                                                          SenderItemWidget(
                                                                        avatar:
                                                                            'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNXx8dXNlcnxlbnwwfHx8fDE2OTk0MTg0NTh8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                                        sender:
                                                                            'John Wood',
                                                                        title:
                                                                            'Can I change the progress?',
                                                                        sendDate:
                                                                            getCurrentTimestamp,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            20.0,
                                                                            0.0),
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .senderItemModel3,
                                                                      updateCallback:
                                                                          () =>
                                                                              setState(() {}),
                                                                      child:
                                                                          SenderItemWidget(
                                                                        avatar:
                                                                            'https://images.unsplash.com/photo-1494790108377-be9c29b29330?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHx1c2VyfGVufDB8fHx8MTY5OTQxODQ1OHww&ixlib=rb-4.0.3&q=80&w=1080',
                                                                        sender:
                                                                            'Katrine Lee',
                                                                        title:
                                                                            'Where is that task?',
                                                                        sendDate:
                                                                            getCurrentTimestamp,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        8.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .divide(const SizedBox(
                                                                  height: 24.0))
                                                              .addToStart(
                                                                  const SizedBox(
                                                                      height:
                                                                          12.0))
                                                              .addToEnd(const SizedBox(
                                                                  height:
                                                                      24.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                  ))
                                                    Container(
                                                      width: 1.0,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .neutral100,
                                                      ),
                                                    ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                  ))
                                                    Expanded(
                                                      flex: 2,
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 100.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              20.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: const BoxDecoration(
                                                                                    shape: BoxShape.rectangle,
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsets.all(4.0),
                                                                                    child: SizedBox(
                                                                                      width: double.infinity,
                                                                                      height: double.infinity,
                                                                                      child: Stack(
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.all(2.0),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: CachedNetworkImage(
                                                                                                fadeInDuration: const Duration(milliseconds: 500),
                                                                                                fadeOutDuration: const Duration(milliseconds: 500),
                                                                                                imageUrl: 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHx1c2VyfGVufDB8fHx8MTY5OTE4NDcxOXww&ixlib=rb-4.0.3&q=80&w=400',
                                                                                                width: 40.0,
                                                                                                height: 40.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(1.0, -1.0),
                                                                                            child: Container(
                                                                                              width: 16.0,
                                                                                              height: 16.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).error600,
                                                                                                shape: BoxShape.circle,
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Cameron Williamson',
                                                                                            maxLines: 2,
                                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Online',
                                                                                            maxLines: 2,
                                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  color: FlutterFlowTheme.of(context).neutral500,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ].divide(const SizedBox(height: 8.0)),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(width: 20.0)),
                                                                            ),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              FlutterFlowIconButton(
                                                                                borderRadius: 20.0,
                                                                                borderWidth: 1.0,
                                                                                buttonSize: 40.0,
                                                                                icon: Icon(
                                                                                  Icons.videocam_rounded,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  context.pushNamed('VideoCall');
                                                                                },
                                                                              ),
                                                                              FlutterFlowIconButton(
                                                                                borderColor: Colors.transparent,
                                                                                borderRadius: 20.0,
                                                                                borderWidth: 1.0,
                                                                                buttonSize: 40.0,
                                                                                icon: Icon(
                                                                                  Icons.call,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                                onPressed: () {
                                                                                  print('IconButton pressed ...');
                                                                                },
                                                                              ),
                                                                              FlutterFlowIconButton(
                                                                                borderColor: Colors.transparent,
                                                                                borderRadius: 20.0,
                                                                                borderWidth: 1.0,
                                                                                buttonSize: 40.0,
                                                                                icon: Icon(
                                                                                  Icons.keyboard_control,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  context.pushNamed('Setting');
                                                                                },
                                                                              ),
                                                                            ].divide(const SizedBox(width: 32.0)),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            wrapWithModel(
                                                                          model:
                                                                              _model.dividerModel1,
                                                                          updateCallback: () =>
                                                                              setState(() {}),
                                                                          child:
                                                                              const DividerWidget(
                                                                            title:
                                                                                'TODAY',
                                                                            titleInLeftSide:
                                                                                true,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            SingleChildScrollView(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.stretch,
                                                                            children:
                                                                                [
                                                                              wrapWithModel(
                                                                                model: _model.messageItemModel1,
                                                                                updateCallback: () => setState(() {}),
                                                                                child: MessageItemWidget(
                                                                                  sender: true,
                                                                                  messasge: 'hi i am sender. sender checked hi i am sender. sender checked\n',
                                                                                  image: 'https://images.unsplash.com/photo-1557188969-16b469a5b6c2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxiZWF1dGlmdWwlMjBvY2VhbnxlbnwwfHx8fDE2OTk0MzE1ODJ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                                                  sendDate: getCurrentTimestamp,
                                                                                  hasAttachment: true,
                                                                                ),
                                                                              ),
                                                                              wrapWithModel(
                                                                                model: _model.messageItemModel2,
                                                                                updateCallback: () => setState(() {}),
                                                                                child: MessageItemWidget(
                                                                                  sender: false,
                                                                                  messasge: 'hi i am reciver. sender is not cheched hi i am sender. sender checked hi i am sender. sender checked',
                                                                                  image: 'https://images.unsplash.com/photo-1633469924738-52101af51d87?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw3fHxsZWdvfGVufDB8fHx8MTY5OTQxOTA0OXww&ixlib=rb-4.0.3&q=80&w=1080',
                                                                                  sendDate: getCurrentTimestamp,
                                                                                  hasAttachment: false,
                                                                                ),
                                                                              ),
                                                                              wrapWithModel(
                                                                                model: _model.messageItemModel3,
                                                                                updateCallback: () => setState(() {}),
                                                                                child: MessageItemWidget(
                                                                                  sender: false,
                                                                                  messasge: 'hi i am reciver. sender is not cheched',
                                                                                  image: 'https://images.unsplash.com/photo-1633469924738-52101af51d87?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw3fHxsZWdvfGVufDB8fHx8MTY5OTQxOTA0OXww&ixlib=rb-4.0.3&q=80&w=1080',
                                                                                  sendDate: getCurrentTimestamp,
                                                                                  hasAttachment: true,
                                                                                ),
                                                                              ),
                                                                              wrapWithModel(
                                                                                model: _model.messageItemModel4,
                                                                                updateCallback: () => setState(() {}),
                                                                                child: MessageItemWidget(
                                                                                  sender: true,
                                                                                  messasge: 'hi i am sender. sender checked hi i am sender. sender checked\n',
                                                                                  image: 'https://images.unsplash.com/photo-1557188969-16b469a5b6c2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxiZWF1dGlmdWwlMjBvY2VhbnxlbnwwfHx8fDE2OTk0MzE1ODJ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                                                  sendDate: getCurrentTimestamp,
                                                                                  hasAttachment: true,
                                                                                ),
                                                                              ),
                                                                              wrapWithModel(
                                                                                model: _model.messageItemModel5,
                                                                                updateCallback: () => setState(() {}),
                                                                                child: MessageItemWidget(
                                                                                  sender: false,
                                                                                  messasge: 'hi i am reciver. sender is not cheched hi i am sender. sender checked hi i am sender. sender checked',
                                                                                  image: 'https://images.unsplash.com/photo-1633469924738-52101af51d87?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw3fHxsZWdvfGVufDB8fHx8MTY5OTQxOTA0OXww&ixlib=rb-4.0.3&q=80&w=1080',
                                                                                  sendDate: getCurrentTimestamp,
                                                                                  hasAttachment: false,
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(height: 8.0)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .dividerModel2,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  const DividerWidget(
                                                                titleInLeftSide:
                                                                    false,
                                                              ),
                                                            ),
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 80.0,
                                                              decoration:
                                                                  const BoxDecoration(),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            20.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          45.0,
                                                                      height:
                                                                          45.0,
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      decoration:
                                                                          const BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child:
                                                                          CachedNetworkImage(
                                                                        fadeInDuration:
                                                                            const Duration(milliseconds: 500),
                                                                        fadeOutDuration:
                                                                            const Duration(milliseconds: 500),
                                                                        imageUrl:
                                                                            'https://images.unsplash.com/photo-1633332755192-727a05c4013d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHx1c2VyfGVufDB8fHx8MTY5OTE4NDcxOXww&ixlib=rb-4.0.3&q=80&w=400',
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              _model.messageTextFieldTextController.text != '' ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).neutral100,
                                                                              FlutterFlowTheme.of(context).neutral100,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Expanded(
                                                                              child: SizedBox(
                                                                                width: 250.0,
                                                                                child: TextFormField(
                                                                                  controller: _model.messageTextFieldTextController,
                                                                                  focusNode: _model.messageTextFieldFocusNode,
                                                                                  onChanged: (_) => EasyDebounce.debounce(
                                                                                    '_model.messageTextFieldTextController',
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
                                                                                    hintText: 'Write message down here ...',
                                                                                    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: FlutterFlowTheme.of(context).neutral400,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    enabledBorder: InputBorder.none,
                                                                                    focusedBorder: InputBorder.none,
                                                                                    errorBorder: InputBorder.none,
                                                                                    focusedErrorBorder: InputBorder.none,
                                                                                    contentPadding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                  validator: _model.messageTextFieldTextControllerValidator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            FlutterFlowIconButton(
                                                                              borderColor: Colors.transparent,
                                                                              borderRadius: 20.0,
                                                                              borderWidth: 1.0,
                                                                              buttonSize: 40.0,
                                                                              icon: Icon(
                                                                                Icons.emoji_emotions_outlined,
                                                                                color: FlutterFlowTheme.of(context).neutral500,
                                                                                size: 20.0,
                                                                              ),
                                                                              onPressed: () {
                                                                                print('IconButton pressed ...');
                                                                              },
                                                                            ),
                                                                            FlutterFlowIconButton(
                                                                              borderColor: Colors.transparent,
                                                                              borderRadius: 20.0,
                                                                              borderWidth: 1.0,
                                                                              buttonSize: 40.0,
                                                                              icon: Icon(
                                                                                Icons.attach_file,
                                                                                color: FlutterFlowTheme.of(context).neutral500,
                                                                                size: 20.0,
                                                                              ),
                                                                              onPressed: () {
                                                                                print('IconButton pressed ...');
                                                                              },
                                                                            ),
                                                                          ].divide(const SizedBox(width: 16.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    FlutterFlowIconButton(
                                                                      borderRadius:
                                                                          8.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          46.0,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .neutral100,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .send_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .neutral500,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      width:
                                                                          16.0)),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
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
                        alignment: const AlignmentDirectional(0.8, -0.96),
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
