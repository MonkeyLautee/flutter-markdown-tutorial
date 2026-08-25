import 'package:flutter/material.dart';
import 'package:markdown_editor_plus/markdown_editor_plus.dart';

class Approach3 extends StatefulWidget {
	const Approach3({super.key});
	@override
	State<Approach3> createState() => _Approach3State();
}

class _Approach3State extends State<Approach3> {

	final TextEditingController _controller = TextEditingController();

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Approach 3'),
			),
			body: ListView(
				children: [
					MarkdownAutoPreview(
					  controller: _controller,
					  emojiConvert: true,
					),
				],
			),
		);
	}
}