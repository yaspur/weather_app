import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {

    final textController =  TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration(
      hintText: 'Barranquilla',
      filled: false,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      // Add a clear button to the search bar
      suffixIcon: IconButton(
        icon: const Icon(Icons.clear),
        onPressed: (){
          textController.clear();
        },
      ),
      // Add a search icon or button to the search bar
      prefixIcon: IconButton(
        icon: const Icon(Icons.search),
        onPressed: () {
          // Perform the search here
          final textValue = textController.value.text;
          textController.clear();
          // todo: colocar metodo para buscar la ciudad
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear();
        // todo: colocar metodo para buscar la ciudad
      },
    );
  }
}