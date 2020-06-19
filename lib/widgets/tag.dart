import 'package:flutter/material.dart';
import 'package:flutter_tagging/flutter_tagging.dart';

class TagBuilder extends StatefulWidget {
  @override
  _TagBuilderState createState() => _TagBuilderState();
}

class _TagBuilderState extends State<TagBuilder> {
  String _selectedValuesJson;
  List<Keyword> _keywords;
  final Color lightGreen = Color(0xFFBFFFD5);
  final Color darkBlue = Color(0xFF161f30);
  final OutlineInputBorder outlineInputBorder = new OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFFBFFFD5),
    ),
    borderRadius: const BorderRadius.all(
      const Radius.circular(90.0),
    ),
  );

  void initState() {
    _keywords = [];
    super.initState();
  }

  @override
  void dispose() {
    _keywords.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 54, 24, 24),
      child: FlutterTagging<Keyword>(
        suggestionsBoxConfiguration: SuggestionsBoxConfiguration(
          suggestionsBoxDecoration: SuggestionsBoxDecoration(
            color: darkBlue,
            elevation: 0,
          ),
        ),
        initialItems: _keywords,
        hideOnEmpty: true,
        animationStart: 1,
        textFieldConfiguration: TextFieldConfiguration(
            cursorColor: lightGreen,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.transparent,
              hintText: "Yazmaya başla...",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              disabledBorder: outlineInputBorder,
              enabledBorder: outlineInputBorder,
              focusedBorder: outlineInputBorder,
              border: outlineInputBorder,
            ),
            style: TextStyle(
              color: lightGreen,
            )),
        findSuggestions: LanguageService.getLanguages,
        additionCallback: (value) {
          return Keyword(
            name: value,
          );
        },
        onAdded: (language) {
          return Keyword(name: language.name);
        },
        configureSuggestion: (lang) {
          return SuggestionConfiguration(
            title: Text(
              lang.name,
              style: TextStyle(
                color: lightGreen,
              ),
            ),
            additionWidget: Chip(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90),
                  side: BorderSide(
                    width: 1,
                    color: Colors.green,
                  ),
                ),
                avatar: Icon(
                  Icons.add_circle,
                  color: Colors.green,
                ),
                label: Text('Ekle'),
                labelStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                ),
                backgroundColor: darkBlue),
          );
        },
        configureChip: (lang) {
          return ChipConfiguration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                width: 1,
                color: lightGreen,
              ),
            ),
            deleteButtonTooltipMessage: "Sil",
            label: Text(lang.name),
            backgroundColor: darkBlue,
            labelStyle: TextStyle(color: lightGreen),
            deleteIconColor: lightGreen,
          );
        },
        onChanged: () {
          setState(() {
            _selectedValuesJson = _keywords
                .map<String>((lang) => '\n${lang.toJson()}')
                .toList()
                .toString();
            _selectedValuesJson =
                _selectedValuesJson.replaceFirst('}]', '}\n]');
          });
        },
      ),
    );
  }
}

class LanguageService {
  static Future<List<Keyword>> getLanguages(String query) async {
    return <Keyword>[].toList();
  }
}

class Keyword extends Taggable {
  final String name;

  Keyword({
    this.name,
  });

  @override
  List<Object> get props => [name];

  String toJson() => '''  {
    "name": $name,\n
  }''';
}
