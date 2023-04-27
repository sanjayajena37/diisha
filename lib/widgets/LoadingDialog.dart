import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../app/providers/Const.dart';
import '../app/providers/SizeDefine.dart';
import 'DialogCloseButton.dart';

class LoadingDialog {
  static call() {
    Get.defaultDialog(
      title: "",
      titleStyle: TextStyle(fontSize: 1),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Please Wait"),
          SizedBox(
            width: 20,
          ),
          CircularProgressIndicator()
        ],
      ),
      radius: 10,
    );
  }

  callwithCancel() {
    //TODO timer for longer dailog
    Get.defaultDialog(
      title: "",
      titleStyle: TextStyle(fontSize: 1),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Please Wait"),
          SizedBox(
            width: 20,
          ),
          CircularProgressIndicator()
        ],
      ),
      radius: 10,
    );
  }

  static callDataSaved({Function? callback, String? msg}) {
    Get.defaultDialog(
      title: "",
      titleStyle: TextStyle(fontSize: 1),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.check_mark_circled_solid,
            color: Colors.green,
            size: 55,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            msg ?? Const.SAVED_MSG,
            style: TextStyle(
                color: Colors.green, fontSize: SizeDefine.popupTxtSize),
          )
        ],
      ),
      radius: 10,
      confirm: DailogCloseButton(
        autoFocus: true,
        callback: () {
          Get.back();
          callback!();
        },
        btnText: "Ok",
        iconDataM: Icons.done,
      ),
      /*confirm: MaterialButton(
        autofocus: true,
        onPressed: () {
          Get.back();
          callback!();
        },
        child: Text(
          "OK",
          style: TextStyle(color: Colors.black),
        ),
      ),*/
      contentPadding: EdgeInsets.only(
          left: SizeDefine.popupMarginHorizontal,
          right: SizeDefine.popupMarginHorizontal,
          bottom: 16),
    );
    /* Get.defaultDialog(
      title: "",
      titleStyle: const TextStyle(fontSize: 1),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            CupertinoIcons.check_mark_circled_solid,
            color: Colors.green,
            size: 55,
          ),
          const SizedBox(height: 20),
          Text(
            msg ?? Const.SAVED_MSG,
            style: TextStyle(
                color: Colors.green, fontSize: SizeDefine.popupTxtSize),
          )
        ],
      ),
      radius: 10,
      confirm: TextButton(
        onPressed: () {
          Get.back();
          callback!();
        },
        autofocus: true,
        child: const Text(
          "OK",
          style: TextStyle(color: Colors.black),
        ),
      ),
      contentPadding: EdgeInsets.only(
        left: SizeDefine.popupMarginHorizontal,
        right: SizeDefine.popupMarginHorizontal,
        bottom: 16,
      ),
    );*/
  }

  static showErrorDialog(String msg, {Function? callback}) {
    Get.defaultDialog(
      title: "",
      titleStyle: const TextStyle(fontSize: 1),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error_outline, color: Colors.red, size: 55),
          const SizedBox(height: 10),
          Text(
            msg,
            style: TextStyle(
                color: Colors.black, fontSize: SizeDefine.popupTxtSize),
          )
        ],
      ),
      radius: 10,
      confirm: DailogCloseButton(
        autoFocus: true,
        callback: () {
          Get.back();
          callback!();
        },
        btnText: "OK",
      )
      /*,confirm: MaterialButton(
        onPressed: () {
          Get.back();
          callback!();
        },
        autofocus: true,
        child: const Text(
          "OK",
          style: TextStyle(color: Colors.black),
        ),
      )*/
      ,
      contentPadding: EdgeInsets.only(
        left: SizeDefine.popupMarginHorizontal,
        right: SizeDefine.popupMarginHorizontal,
        bottom: 16,
      ),
    );
  }

  static callDataSavedMessage(String value, {Function()? callback}) {
    Get.defaultDialog(
      title: "",
      titleStyle: TextStyle(fontSize: 1),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.check_mark_circled_solid,
            color: Colors.green,
            size: 55,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            value,
            style: TextStyle(
                color: Colors.green, fontSize: SizeDefine.popupTxtSize),
          )
        ],
      ),
      radius: 10,
      confirm: DailogCloseButton(
        autoFocus: true,
        callback: () {
          Get.back();
          if (callback != null) {
            callback();
          }
        },
        btnText: "OK",
      ),
      /*confirm: MaterialButton(
          autofocus: true,
          onPressed: () {
            Get.back();
          },
          child: Text(
            "OK",
            style: TextStyle(color: Colors.black),
          )),*/
      contentPadding: EdgeInsets.only(
          left: SizeDefine.popupMarginHorizontal,
          right: SizeDefine.popupMarginHorizontal,
          bottom: 16),
    );
  }

  static callInfoMessage(String value) {
    Get.defaultDialog(
      title: "",
      barrierDismissible: true,
      titleStyle: TextStyle(fontSize: 1),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            CupertinoIcons.info,
            color: Colors.black,
            size: 55,
          ),
          const SizedBox(height: 20),
          Text(
            value,
            style: TextStyle(
                color: Colors.black, fontSize: SizeDefine.popupTxtSize),
          )
        ],
      ),
      radius: 10,
      confirm: DailogCloseButton(
        autoFocus: true,
        callback: () {
          Get.back();
          // callback!();
        },
        btnText: "OK",
      ),
      /*confirm: MaterialButton(
          autofocus: true,
          onPressed: () {
            Get.back();
          },
          child: Text("OK")),*/
      contentPadding: EdgeInsets.only(
          left: SizeDefine.popupMarginHorizontal,
          right: SizeDefine.popupMarginHorizontal,
          bottom: 16),
    );
  }

  static callErrorMessage(String value) {
    Get.defaultDialog(
      title: "",
      titleStyle: const TextStyle(fontSize: 1),
      content: Expanded(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                CupertinoIcons.info,
                color: Colors.red,
                size: 55,
              ),
              const SizedBox(height: 20),
              Text(
                value,
                style: TextStyle(
                    color: Colors.red, fontSize: SizeDefine.popupTxtSize),
              )
            ],
          ),
        ),
      ),
      radius: 10,
      /*confirm: MaterialButton(
          autofocus: true,
          onPressed: () {
            Get.back();
          },
          child: const Text("Ok")),*/
      confirm: DailogCloseButton(
        focusNode: FocusNode(
            canRequestFocus: true,
            onKeyEvent: ((node, event) {
              if (event.physicalKey == PhysicalKeyboardKey.enter) {
                Get.back();
              }

              if (event.physicalKey == PhysicalKeyboardKey.space) {
                Get.back();
              }
              if (event.physicalKey == PhysicalKeyboardKey.escape) {
                Get.back();
              }

              return KeyEventResult.handled;
            })),
        autoFocus: true,
        callback: () {
          Get.back();
          // callback!();
        },
        btnText: "OK",
      ),
      contentPadding: EdgeInsets.only(
        left: SizeDefine.popupMarginHorizontal,
        right: SizeDefine.popupMarginHorizontal,
        bottom: 16,
      ),
    );
  }

  static callErrorMessage1({required String msg}) {
    Get.defaultDialog(
      title: "",
      titleStyle: TextStyle(fontSize: 1),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.info,
            color: Colors.red,
            size: 55,
          ),
          SizedBox(height: 20),
          Text(
            msg,
            style: TextStyle(color: Colors.red, fontSize: SizeDefine.labelSize),
          )
        ],
      ),
      radius: 10,
      confirm: DailogCloseButton(
        autoFocus: true,
        callback: () {
          Get.back();
          // callback!();
        },
        btnText: "OK",
      ),
      /*confirm: TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text("Ok")),*/
      contentPadding: EdgeInsets.only(
          left: SizeDefine.popupMarginHorizontal,
          right: SizeDefine.popupMarginHorizontal,
          bottom: 16),
    );
  }

  static delete(String title, Function? confirm,
      {String? deleteTitle, String? deleteCancel, Function? cancel}) {
    Get.defaultDialog(
      title: "",
      titleStyle: TextStyle(fontSize: 1),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.check_mark_circled_solid,
            color: Colors.green,
            size: 55,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.green, fontSize: SizeDefine.popupTxtSize),
            textAlign: TextAlign.center,
          )
        ],
      ),
      radius: 10,
      confirm: DailogCloseButton(
        autoFocus: false,
        callback: () {
          Get.back();
          if (cancel != null) {
            cancel();
          }
          // confirm!();
        },
        btnText: deleteCancel ?? "No",
      ),
      /*confirm: MaterialButton(
          onPressed: () {
            Get.back();
            confirm!();
          },
          child: Text(deleteTitle ?? "Delete")),*/
      /* cancel: MaterialButton(
          onPressed: () {
            Get.back();
          },
          child: Text(deleteCancel ?? "Cancel")), */
      cancel: DailogCloseButton(
        autoFocus: true,
        callback: () {
          Get.back();
          confirm!();
        },
        btnText: deleteTitle ?? "Yes",
      ),
      contentPadding: EdgeInsets.only(
          left: SizeDefine.popupMarginHorizontal,
          right: SizeDefine.popupMarginHorizontal,
          bottom: 16),
    );
  }

  static recordExists(String title, Function? confirm,
      {String? deleteTitle, String? deleteCancel}) {
    Get.defaultDialog(
      title: "",
      titleStyle: TextStyle(fontSize: 1),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.question_circle_fill,
            color: Colors.blueAccent,
            size: 55,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.blueAccent, fontSize: SizeDefine.popupTxtSize),
            textAlign: TextAlign.center,
          )
        ],
      ),
      radius: 10,
      /*confirm: MaterialButton(
          onPressed: () {
            Get.back();
            confirm!();
          },
          child: Text(deleteTitle ?? "Yes")),*/
      confirm: DailogCloseButton(
          autoFocus: false,
          callback: () {
            Get.back();
          },
          btnText: deleteCancel ?? "No"),
      cancel: DailogCloseButton(
          autoFocus: true,
          callback: () {
            Get.back();
            confirm!();
          },
          btnText: deleteTitle ?? "Yes"),
      /*cancel: MaterialButton(
          onPressed: () {
            Get.back();
          },
          autofocus: true,
          child: Text(deleteCancel ?? "No")),*/
      contentPadding: EdgeInsets.only(
          left: SizeDefine.popupMarginHorizontal,
          right: SizeDefine.popupMarginHorizontal,
          bottom: 16),
    );
  }

  static modify(String title, Function? confirm, Function? cancel,
      {String? deleteTitle, String? cancelTitle}) {
    Get.defaultDialog(
      title: "",
      titleStyle: TextStyle(fontSize: 1),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.check_mark_circled_solid,
            color: Colors.green,
            size: 55,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.green, fontSize: SizeDefine.popupTxtSize),
            textAlign: TextAlign.center,
          )
        ],
      ),
      radius: 10,
      /*confirm: MaterialButton(
          onPressed: () {
            Get.back();
            confirm!();
          },
          child: Text(deleteTitle ?? "Delete")),*/
      confirm: DailogCloseButton(
          autoFocus: false,
          callback: () {
            Get.back();
            cancel!();
          },
          btnText: cancelTitle ?? "Cancel"),
      /*cancel: MaterialButton(
          onPressed: () {
            Get.back();
            cancel!();
          },
          child: Text(cancelTitle ?? "Cancel")),*/
      cancel: DailogCloseButton(
          autoFocus: true,
          callback: () {
            Get.back();
            confirm!();
          },
          btnText: deleteTitle ?? "Delete"),
      contentPadding: EdgeInsets.only(
          left: SizeDefine.popupMarginHorizontal,
          right: SizeDefine.popupMarginHorizontal,
          bottom: 16),
    );
  }

  static callDataDeleted() {
    Get.defaultDialog(
      title: "",
      titleStyle: TextStyle(fontSize: 1),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.check_mark_circled_solid,
            color: Colors.green,
            size: 55,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Data Deleted Successfully",
            style: TextStyle(
                color: Colors.green, fontSize: SizeDefine.popupTxtSize),
          )
        ],
      ),
      radius: 10,
      /*confirm: TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text("Ok")),*/
      confirm: DailogCloseButton(
          autoFocus: true,
          callback: () {
            Get.back();
            // cancel!();
          },
          btnText: "OK"),
      contentPadding: EdgeInsets.only(
          left: SizeDefine.popupMarginHorizontal,
          right: SizeDefine.popupMarginHorizontal,
          bottom: 16),
    );
  }

  static callExitForm(fun) {
    Get.defaultDialog(
      title: "",
      titleStyle: TextStyle(fontSize: 1),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.question,
            color: Colors.yellow[900],
            size: 55,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Are you sure you want to exit this form?",
            style: TextStyle(
                color: Colors.green, fontSize: SizeDefine.popupTxtSize),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
      radius: 10,
      confirm: FormButton(
          callback: () {
            Get.back();
          },
          btnText: "No"),
      cancel: FormButton(
          callback: () {
            Get.back();
            fun();
          },
          btnText: "Yes"),
      contentPadding: EdgeInsets.only(
          left: SizeDefine.popupMarginHorizontal,
          right: SizeDefine.popupMarginHorizontal,
          bottom: 16),
    );
  }
}

class FormButton extends StatelessWidget {
  final String btnText;
  final VoidCallback? callback;
  final bool? isEnabled;
  final FocusNode? focusNode;
  final IconData? iconDataM;
  final bool showIcon;
  const FormButton(
      {Key? key,
        required this.btnText,
        this.callback,
        this.isEnabled,
        this.focusNode,
        this.showIcon = true,
        this.iconDataM})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var iconData;
    if (btnText.toLowerCase() == "save") {
      iconData = Icons.save;
    } else if (btnText.toLowerCase() == "delete" ||
        btnText.toLowerCase() == "delete variance") {
      iconData = Icons.delete;
    } else if (btnText.toLowerCase() == "refresh") {
      iconData = Icons.refresh;
    } else if (btnText.toLowerCase() == "clear") {
      iconData = Icons.cleaning_services_outlined;
    } else if (btnText.toLowerCase() == "exit") {
      iconData = Icons.exit_to_app;
    } else if (btnText.toLowerCase() == "search") {
      iconData = Icons.search;
    } else if (btnText.toLowerCase() == "docs") {
      iconData = Icons.folder;
    } else if (btnText.toLowerCase() == "add" ||
        btnText.toLowerCase() == "add default segment" ||
        btnText.toLowerCase() == "add variance") {
      iconData = Icons.add;
    } else if (btnText.toLowerCase() == "next") {
      iconData = Icons.next_plan;
    } else if (btnText.toLowerCase() == "schedule") {
      iconData = Icons.schedule_outlined;
    } else if (btnText.toLowerCase() == "actuals/default") {
      iconData = Icons.person;
    } else if (btnText.toLowerCase() == "yes") {
      iconData = CupertinoIcons.check_mark_circled_solid;
    } else if (btnText.toLowerCase() == "no") {
      iconData = CupertinoIcons.clear_circled_solid;
    } else if (btnText.toLowerCase() == "map") {
      iconData = CupertinoIcons.arrow_right_arrow_left_circle;
    } else if (btnText.toLowerCase() == "summary") {
      iconData = Icons.plagiarism_outlined;
    } else if (btnText.toLowerCase() == "segment") {
      iconData = Icons.segment;
    } else if (btnText.toLowerCase() == "breakfile") {
      iconData = Icons.insert_page_break;
    } else if (btnText.toLowerCase() == "adjust dur") {
      iconData = Icons.adjust;
    } else if (btnText.toLowerCase() == "auto adjust") {
      iconData = Icons.commit;
    } else if (btnText.toLowerCase() == "show details") {
      iconData = Icons.description_sharp;
    } else if (btnText.toLowerCase() == "default") {
      iconData = CupertinoIcons.settings;
    } else if (btnText.toLowerCase() == "view day") {
      iconData = CupertinoIcons.brightness;
    } else if (btnText.toLowerCase() == "generate") {
      iconData = Icons.settings_suggest;
    } else if (btnText.toLowerCase() == "execute") {
      iconData = Icons.start;
    } else if (btnText.toLowerCase() == "ok" ||
        btnText.toLowerCase() == "done") {
      iconData = Icons.done;
    } else if (btnText.toLowerCase() == "show programs") {
      iconData = Icons.remove_red_eye;
    } else if (btnText.toLowerCase() == "cancel") {
      iconData = Icons.cancel;
    } else if (btnText.toLowerCase() == "undo") {
      iconData = Icons.undo;
    } else if (btnText.toLowerCase() == "validate") {
      iconData = Icons.verified_user_rounded;
    } else if (btnText.toLowerCase() == "fc") {
      iconData = Icons.color_lens_outlined;
    } else if (btnText.toLowerCase() == "bc") {
      iconData = Icons.color_lens;
    } else if (btnText.toLowerCase() == "copy segments/annotation") {
      iconData = Icons.copy;
    } else {
      iconData = Icons.error;
    }
    if (iconDataM != null) {
      iconData = iconDataM;
    }

    return ElevatedButton.icon(
      focusNode: focusNode,
      onPressed: (isEnabled ?? true)
          ? (btnText == "Exit")
          ? () {
        LoadingDialog.callExitForm(() {
          /*if (html.window.location.href.contains("dashboard")) {
            // Get.find<DashboardController>().updateDarwerSelection(0, "0", "0");
            Get.find<DashboardController>()
                .updateDarwerSelection(0, "0", "0");
            Get.find<DashboardController>()
              ..selectChild1.value = null;
            if (kIsWeb) {
              SystemChrome.setApplicationSwitcherDescription(
                ApplicationSwitcherDescription(label: "Zee BMS"),
              );
            }
            callback!();
          } else {
            Get.back();
          }*/
        });
      }
          : callback
          : null,
      icon: showIcon ? Icon(iconData, size: 16) : const SizedBox(width: 0),
      label: Text(
        btnText,
        style: TextStyle(fontSize: SizeDefine.fontSizeButton),
      ),
    );

    // if (iconData == null) {
    //   return ElevatedButton(
    //     onPressed: (isEnabled ?? true)
    //         ? (btnText == "Exit")
    //             ? () {
    //                 LoadingDialog.callExitForm(() {
    //                   Get.find<DashboardController>()
    //                       .updateDarwerSelection(0, "0", "0");
    //                   Get.find<DashboardController>()
    //                     ..selectChild1.value = null;
    //                   callback!();
    //                 });
    //               }
    //             : callback
    //         : null,
    //     // icon: ,
    //     child: Text(
    //       btnText,
    //       style: TextStyle(fontSize: SizeDefine.fontSizeButton),
    //     ),
    //     style: ElevatedButton.styleFrom(
    //       foregroundColor: Colors.white,
    //       backgroundColor: Colors.deepPurple,
    //     ),
    //   );
    // } else {
    //   return IconButton(
    //     onPressed: (isEnabled ?? true)
    //         ? (btnText == "Exit")
    //             ? () {
    //                 LoadingDialog.callExitForm(() {
    //                   Get.find<DashboardController>()
    //                       .updateDarwerSelection(0, "0", "0");
    //                   Get.find<DashboardController>()
    //                     ..selectChild1.value = null;
    //                   callback!();
    //                 });
    //               }
    //             : callback
    //         : null,
    //     icon: Icon(iconData),
    //     color: (isEnabled ?? true) ? Colors.deepPurpleAccent : Colors.grey,
    //     tooltip: btnText,
    //     disabledColor: Colors.grey,
    //   );
    // }
  }
}
