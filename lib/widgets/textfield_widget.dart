import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    Key? key,
    required this.obscureText,
    required this.labelText,
  }) : super(key: key);
  final bool obscureText;
  final String labelText;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  Color textFieldColor = Colors.green;
  double textFieldBorderWidth = 2;
  double textFieldFocusedBorderWidth = 4;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final double textFieldHeight = height * 0.06;
    final double textFieldWidth = width * 0.8;
    final double textFieldBorderRadius = textFieldHeight / 2;
    final double textFieldPadding = width * 0.07;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: textFieldWidth,
            height: textFieldHeight,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.start,
              obscureText: widget.obscureText && !isVisible,
              decoration: InputDecoration(
                suffixIcon: widget.obscureText
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            if (isVisible) {
                              isVisible = false;
                            } else {
                              isVisible = true;
                            }
                          });
                        },
                        icon: isVisible
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off))
                    : null,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: textFieldPadding),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                filled: true,
                fillColor: Colors.white,
                labelText: widget.labelText,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(textFieldBorderRadius),
                  borderSide: BorderSide(
                      color: textFieldColor, width: textFieldBorderWidth),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(textFieldBorderRadius),
                  borderSide: BorderSide(
                      color: textFieldColor,
                      width: textFieldFocusedBorderWidth),
                ),
              ),
            )),
      ],
    );
  }
}
