import 'package:flutter/material.dart';

class OtpFormField extends StatefulWidget {
  final int numberOfFields;
  final Function(List<String>) onOtpEntered;

  const OtpFormField({required this.numberOfFields, required this.onOtpEntered});

  @override
  _OtpFormFieldState createState() => _OtpFormFieldState();
}

class _OtpFormFieldState extends State<OtpFormField> {
  List<TextEditingController> _controllers = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.numberOfFields; i++) {
      _controllers.add(TextEditingController());
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...List.generate(widget.numberOfFields, (index) {
          return SizedBox(
            width: 40,
            height: 38,
            child: TextField(
              cursorColor: Colors.teal,

              controller: _controllers[index],
              keyboardType: TextInputType.number,
              maxLength: 1,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                counterText: '',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
              onChanged: (value) {
                if (value.isEmpty && index > 0) {
                  // Delete the current field and move focus back to previous field
                  _controllers[index].clear();
                  FocusScope.of(context).previousFocus();
                } else if (value.length == 1) {
                  _controllers[index].text = value;
                  if (index == widget.numberOfFields - 1) {
                    List<String> otpValues = [];
                    _controllers.forEach((controller) {
                      otpValues.add(controller.text);
                    });
                    widget.onOtpEntered(otpValues);
                  } else {
                    FocusScope.of(context).nextFocus();
                  }
                }
              },
            ),
          );
        }),
      ],
    );
  }
}
