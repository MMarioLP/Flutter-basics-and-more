import 'package:flutter/material.dart';

class MessageFileBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFileBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focus = FocusNode();
    final OutlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(20));

    final inputDecoration = InputDecoration(
        hintText: 'Escribe un mensaje, debe terminar en "?"',
        enabledBorder: OutlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
            onPressed: () {
              final textValue = textController.value.text;
              textController.clear();
              onValue(textValue);
            },
            icon: const Icon(
              Icons.send_rounded,
            )));

    return TextFormField(
      focusNode: focus,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        final textValue = textController.value.text;
        textController.clear();
        onValue(value);
        focus.requestFocus();
      },
      onTapOutside: (event) {
        focus.unfocus();
      },
    );
  }
}
