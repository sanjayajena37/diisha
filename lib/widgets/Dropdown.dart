import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDown{

  /*static Widget formDropDown1Width(
      BuildContext buildcontext,
      List<SystemEnviroment>? items,
      Function callback,
      String hint,
      double widthRatio, {
        double? height,
        double? paddingLeft,
        double? paddingTop,
        // FocusNode? focusNode,
        double? paddingBottom,
        SystemEnviroment? selected,
        bool? isEnable,
        bool? searchReq,
        bool autoFocus = false,
        double dialogHeight = 350,
        double? dialogWidth,
      }) {
    isEnable ??= true;
    final widgetKey = GlobalKey();
    final textColor = (isEnable) ? Colors.black : Colors.grey;
    final iconLineColor = (isEnable) ? Colors.deepPurpleAccent : Colors.grey;
    FocusNode inkwellFocus = FocusNode(
        descendantsAreFocusable: false, descendantsAreTraversable: false);
    return Column(
      key: widgetKey,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hint,
          style: TextStyle(
            fontSize: SizeDefine.labelSize1,
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        StatefulBuilder(builder: (context, re) {
          return InkWell(
              autofocus: autoFocus,
              focusNode: inkwellFocus,
              canRequestFocus: isEnable ?? true,
              onTap: !isEnable!
                  ? null
                  : () {
                if ((items == null || items.isEmpty)) {
                  return;
                }
                // var isLoading = RxBool(false);
                var tempList = RxList<SystemEnviroment>([]);
                tempList.addAll(items);
                final width =
                (widgetKey.currentContext?.size?.width ?? 200);
                final height =
                (widgetKey.currentContext?.size?.height ?? 200);
                var box = widgetKey.currentContext!.findRenderObject()
                as RenderBox;
                var startpoints = box.localToGlobal(Offset(0, height));
                showMenu(
                  context: context,
                  position: RelativeRect.fromSize(
                      (startpoints & const Size(0, 0)), Get.size),
                  constraints: BoxConstraints.expand(
                    width: dialogWidth ?? width,
                    height: dialogHeight,
                  ),
                  items: [
                    CustomPopupMenuItem(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: SizeDefine.fontSizeInputField),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: dialogHeight - 20,
                        child: Column(
                          children: [
                            /// search
                            TextFormField(
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(12),
                                isDense: true,
                                isCollapsed: true,
                                hintText: "Search",
                              ),
                              autofocus: true,
                              style: TextStyle(
                                fontSize: SizeDefine.fontSizeInputField,
                              ),
                              onChanged: ((value) {
                                if (value.isNotEmpty) {
                                  tempList.clear();
                                  for (var i = 0; i < items.length; i++) {
                                    if (items[i]
                                        .value!
                                        .toLowerCase()
                                        .contains(value.toLowerCase())) {
                                      tempList.add(items[i]);
                                    }
                                  }
                                }
                              }),
                              inputFormatters: [
                                FilteringTextInputFormatter.deny("  "),
                              ],
                            ),

                            /// progreesbar
                            // Obx(() {
                            //   return Visibility(
                            //     visible: isLoading.value,
                            //     child: const LinearProgressIndicator(
                            //       minHeight: 3,
                            //     ),
                            //   );
                            // }),

                            const SizedBox(height: 5),

                            /// list
                            Expanded(
                              child: Obx(
                                    () {
                                  return ListView(
                                    shrinkWrap: true,
                                    children: tempList
                                        .map(
                                          (element) => InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                          selected = element;
                                          callback(element);
                                          re(() {});
                                          FocusScope.of(context)
                                              .requestFocus(
                                              inkwellFocus);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets
                                              .symmetric(vertical: 8),
                                          child: Text(
                                            element.value ?? "null",
                                            style: TextStyle(
                                              fontSize: SizeDefine
                                                  .dropDownFontSize -
                                                  1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                        .toList(),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              child: Container(
                width: Get.width * widthRatio,
                height: SizeDefine.heightInputField,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: iconLineColor,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, right: 4),
                            child: Text(
                              (selected?.value ?? ""),
                              style: TextStyle(
                                fontSize: SizeDefine.fontSizeInputField,
                                color: textColor,
                              ),
                              maxLines: 1,
                              textAlign: TextAlign.start,
                            ),
                          ),
                        )),
                    Icon(
                      Icons.arrow_drop_down,
                      color: iconLineColor,
                    )
                  ],
                ),
              ));
        }),
      ],
    );

  }*/
}