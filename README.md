# Flutter markdown

## Set up and run the project

Vanilla Flutter project, no set up required, just open the emulator and execute:

```bash
flutter run
```

## Different ways to use markdown in Flutter apps

### 🐵 Just display markdown

Use `flutter_markdown_plus` package.
It has large community support.

```bash
flutter pub add flutter_markdown_plus
```

```js
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';

Markdown(data:mdText),
```

---

### 🐵 Regular TextField with a toolbar at its bottom with markdown shortcuts

https://pub.dev/packages/markdown_editable_textinput

```bash
flutter pub add markdown_editable_textinput
```

Advanced markdown features and extensive customization for your editor.
Good community support.
It includes a toolbar with a wider range of markdown formatting options.
The toolbar can be customized and styled to fit the app's design and branding.

```js
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown_editable_textinput/format_markdown.dart';
import 'package:markdown_editable_textinput/markdown_text_input.dart';

String _description = 'My great package';
TextEditingController controller = TextEditingController();

//Here you type the markdown
MarkdownTextInput(
  (String value) => setState(() => _description = value),
  _description,
  label: 'Description',
  actions: MarkdownType.values,
  controller: controller,
  textStyle: const TextStyle(fontSize: 17),
),
ElevatedButton(
  onPressed: ()=>controller.clear(),
  child: const Text('Clear'),
),
//Here the markdown is displayed
MarkdownBody(
  data: _description,
  shrinkWrap: true,
),
```

---

### 🐵 Regular TextField with a toolbar at its bottom with markdown shortcuts and an eye icon button to see the final result

TextField with a toolbar at the bottom.
There is an eye icon in the toolbar to see the result.
It's possible to customize the toolbar colors.

https://pub.dev/packages/markdown_editor_plus

```bash
flutter pub add markdown_editor_plus
```

```js
import 'package:markdown_editor_plus/markdown_editor_plus.dart';

TextEditingController _controller = TextEditingController();

MarkdownAutoPreview(
  controller: _controller,
  emojiConvert: true,
),
```

---

### 🐵 Markdown TextField like if it were Microsoft Word or Google Docs

Use `flutter_quill` package.
It's a WYSIWYG (What You See Is What You Get) editor.
In simple words it's like a Microsoft Word.

Supports:
* Android
* iOS
* Web
* Desktop

```bash
flutter pub add flutter_quill
```

```js
import 'package:flutter_quill/flutter_quill.dart';

final QuillController _controller = QuillController.basic();

QuillSimpleToolbar(
  controller: _controller,
  config: const QuillSimpleToolbarConfig(),
),
Expanded(
  child: QuillEditor.basic(
    controller: _controller,
    config: QuillEditorConfig(
      // Configurations
    ),
  ),
),
```

* Important code to add:

Ensure `flutter_localizations` is in your `puspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
```

Ensure this code is in `main.dart`:

```js
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_quill/flutter_quill.dart';

MaterialApp(
  //...
  localizationsDelegates: const [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    FlutterQuillLocalizations.delegate,
  ],
  supportedLocales: const [
    Locale('en', 'US'),
  ],
  //...
),
```