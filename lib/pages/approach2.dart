import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown_editable_textinput/format_markdown.dart';
import 'package:markdown_editable_textinput/markdown_text_input.dart';

class Approach2 extends StatefulWidget {
	const Approach2({super.key});
	@override
	State<Approach2> createState() => _Approach2State();
}

class _Approach2State extends State<Approach2> {

	String _mdText = 'My great package';
	final TextEditingController controller = TextEditingController();

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Approach 2'),
			),
			body: ListView(
				children: [
					const SizedBox(height:12),
					//Here you type the markdown
					MarkdownTextInput(
					  (String value) => setState(() => _mdText = value),
					  _mdText,
					  label: 'Markdown text',
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
					  data: _mdText,
					  shrinkWrap: true,
					),
					const SizedBox(height:12),
				],
			),
		);
	}
}