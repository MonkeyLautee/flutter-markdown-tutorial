import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown_editable_textinput/format_markdown.dart';
import 'package:markdown_editable_textinput/markdown_text_input.dart';

class Approach3 extends StatefulWidget {
	const Approach3({super.key});
	@override
	State<Approach3> createState() => _Approach3State();
}

class _Approach3State extends State<Approach3> {

	String _description = 'My great package';
	final TextEditingController controller = TextEditingController();

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Approach 3'),
			),
			body: ListView(
				children: [
					const SizedBox(height:12),
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
					const SizedBox(height:12),
				],
			),
		);
	}
}