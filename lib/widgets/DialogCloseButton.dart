import 'dart:async';
import 'dart:html' as html;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../widgets/LoadingDialog.dart';
import '../app/providers/SizeDefine.dart';


class DailogCloseButton extends StatefulWidget {
  final String btnText;
  final VoidCallback? callback;
  final bool? isEnabled;
  final bool? autoFocus;
  final FocusNode? focusNode;
  final IconData? iconDataM;
  const DailogCloseButton(
      {Key? key,
        required this.btnText,
        this.callback,
        this.isEnabled,
        this.focusNode,
        this.autoFocus = false,
        this.iconDataM})
      : super(key: key);

  @override
  State<DailogCloseButton> createState() => _DailogCloseButtonState();
}

class _DailogCloseButtonState extends State<DailogCloseButton> {
  Timer? _timer;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (mounted) {
        FocusScope.of(context).requestFocus(widget.focusNode);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer!.cancel();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var iconData;
    if (widget.btnText.toLowerCase() == "save") {
      iconData = Icons.save;
    } else if (widget.btnText.toLowerCase() == "delete") {
      iconData = Icons.delete;
    } else if (widget.btnText.toLowerCase() == "ok") {
      iconData = Icons.done;
    } else if (widget.btnText.toLowerCase() == "refresh") {
      iconData = Icons.refresh;
    } else if (widget.btnText.toLowerCase() == "clear" ||
        widget.btnText.toLowerCase() == "cancel") {
      iconData = Icons.clear;
    } else if (widget.btnText.toLowerCase() == "exit") {
      iconData = Icons.exit_to_app;
    } else if (widget.btnText.toLowerCase() == "search") {
      iconData = Icons.search;
    } else if (widget.btnText.toLowerCase() == "docs") {
      iconData = Icons.folder;
    } else if (widget.btnText.toLowerCase() == "add") {
      iconData = Icons.add;
    } else if (widget.btnText.toLowerCase() == "next") {
      iconData = Icons.next_plan;
    } else if (widget.btnText.toLowerCase() == "schedule") {
      iconData = Icons.schedule_outlined;
    } else if (widget.btnText.toLowerCase() == "actuals/default") {
      iconData = Icons.person;
    } else if (widget.btnText.toLowerCase() == "yes") {
      iconData = CupertinoIcons.check_mark_circled_solid;
    } else if (widget.btnText.toLowerCase() == "undo") {
      iconData = Icons.undo;
    } else if (widget.btnText.toLowerCase() == "no") {
      iconData = CupertinoIcons.clear_circled_solid;
    } else {
      iconData = Icons.error;
    }
    if (widget.iconDataM != null) {
      iconData = widget.iconDataM;
    }

    return ElevatedButton.icon(
      focusNode: widget.focusNode,
      onPressed: (widget.isEnabled ?? true)
          ? (widget.btnText == "Exit")
          ? () {
        LoadingDialog.callExitForm(() {
          if (html.window.location.href.contains("dashboard")) {

          } else {
            Get.back();
          }
        });
      }
          : widget.callback
          : null,
      icon: Icon(iconData, size: 16),
      autofocus: widget.autoFocus,
      label: Text(
        widget.btnText,
        style: TextStyle(fontSize: SizeDefine.fontSizeButton),
      ),
    );

  }
}