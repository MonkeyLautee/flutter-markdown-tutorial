import 'package:flutter/material.dart';
import 'package:markdown_editor_plus/markdown_editor_plus.dart';

class Approach2 extends StatefulWidget {
	const Approach2({super.key});
	@override
	State<Approach2> createState() => _Approach2State();
}

class _Approach2State extends State<Approach2> {

	final TextEditingController _controller = TextEditingController();

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Approach 2'),
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