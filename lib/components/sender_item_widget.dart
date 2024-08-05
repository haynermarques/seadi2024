import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'sender_item_model.dart';
export 'sender_item_model.dart';

class SenderItemWidget extends StatefulWidget {
  const SenderItemWidget({
    super.key,
    required this.avatar,
    required this.sender,
    required this.title,
    required this.sendDate,
  });

  final String? avatar;
  final String? sender;
  final String? title;
  final DateTime? sendDate;

  @override
  State<SenderItemWidget> createState() => _SenderItemWidgetState();
}

class _SenderItemWidgetState extends State<SenderItemWidget> {
  late SenderItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SenderItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      onEnter: ((event) async {
        setState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        setState(() => _model.mouseRegionHovered = false);
      }),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          _model.selected = valueOrDefault<bool>(
            _model.selected ? false : true,
            false,
          );
          setState(() {});
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: _model.selected
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: valueOrDefault<Color>(
                _model.mouseRegionHovered
                    ? FlutterFlowTheme.of(context).neutral200
                    : FlutterFlowTheme.of(context).white0,
                FlutterFlowTheme.of(context).white0,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                badges.Badge(
                  badgeContent: Text(
                    '1',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                  ),
                  showBadge: true,
                  shape: badges.BadgeShape.circle,
                  badgeColor: FlutterFlowTheme.of(context).error600,
                  elevation: 0.0,
                  padding: const EdgeInsets.all(2.0),
                  position: badges.BadgePosition.topEnd(),
                  animationType: badges.BadgeAnimationType.scale,
                  toAnimate: true,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: CachedNetworkImage(
                      fadeInDuration: const Duration(milliseconds: 500),
                      fadeOutDuration: const Duration(milliseconds: 500),
                      imageUrl: widget.avatar!,
                      width: 48.0,
                      height: 48.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              widget.sender!,
                              maxLines: 2,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: _model.selected
                                        ? FlutterFlowTheme.of(context).white0
                                        : FlutterFlowTheme.of(context)
                                            .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Text(
                            dateTimeFormat('jm', widget.sendDate),
                            style: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: _model.selected
                                      ? FlutterFlowTheme.of(context).neutral300
                                      : FlutterFlowTheme.of(context).neutral500,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              widget.title!,
                              maxLines: 2,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: _model.selected
                                        ? FlutterFlowTheme.of(context)
                                            .neutral100
                                        : FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ].divide(const SizedBox(height: 8.0)),
                  ),
                ),
              ].divide(const SizedBox(width: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
