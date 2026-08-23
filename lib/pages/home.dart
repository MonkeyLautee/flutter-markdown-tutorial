import 'package:flutter/material.dart';
import '../base.dart';
import 'approach1.dart';
import 'approach2.dart';
import 'approach3.dart';
import 'approach4.dart';

class Home extends StatefulWidget {
	const Home({super.key});
	@override
	State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

	final String _mdText = '''# Header 1

Paragraph of header 1.

## Header 2

Paragraph of header 2.

### Header 3

Paragraph of header 3.

#### Header 4

Paragraph of header 4.

##### Header 5

Paragraph of header 5.

###### Header 6

Paragraph of header 6.

---

Ordered list:

1. Item 1.
2. Item 2.
3. Item 3.
4. Item 4.
5. Item 5.

Unordered list (with `*`):

* Item 1.
* Item 2.
* Item 3.
* Item 4.
* Item 5.

Unordered list (with `-`):

- Item 1.
- Item 2.
- Item 3.
- Item 4.
- Item 5.

---

Link:
https://monkeynote.app

---

Text with link:

[MonkeyNote web app](https://monkeynote.app)

---

Block of JS code:

```js
let x = 4;
function doIt(){
	console.log('Do something')
}
```

---

This is bold: *Hello world*.
This is bold: **Hello world**.

This is italic: _Hello world_.
This is italic: __Hello world__.

---

This text has some `special words`.''';

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Markdown approaches'),
			),
			body: ListView(
				padding: const EdgeInsets.all(16),
				children: [
					const SizedBox(height:12),
					Text('Ordered by complexity:'),
					const SizedBox(height:12),
					Approach(
						'Just display markdown.',
						'Display markdown',
						Approach1(_mdText),
					),
					Approach(
						'Regular TextField with a floating toolbar with markdown shortcuts and an optional eye icon button to see the final result.',
						'Markdown TextField 1',
						Approach2(),
					),
					Approach(
						'Regular TextField with a toolbar at its bottom with markdown shortcuts',
						'Markdown TextField 2',
						Approach3(),
					),
					Approach(
						'Markdown TextField like if it were Microsoft Word',
						'Word-like TextField',
						Approach4(),
					),
					const SizedBox(height:12),
				],
			),
		);
	}
}

class Approach extends StatelessWidget {
	final String description;
	final String buttonText;
	final Widget page;
	const Approach(this.description,this.buttonText,this.page,{super.key});
	@override
	Widget build(BuildContext context)=>Column(
		children: [
			const SizedBox(height:12),
			Text(description),
			sep7,
			ElevatedButton(
			  onPressed: ()=>goTo(context,page),
			  child: Text(buttonText),
			),
			const SizedBox(height:12),
		],
	);
}