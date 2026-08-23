import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class Approach4 extends StatefulWidget {
	const Approach4({super.key});
	@override
	State<Approach4> createState() => _Approach4State();
}

class _Approach4State extends State<Approach4> {

	final QuillController _controller = QuillController.basic();

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Approach 4'),
			),
			body: Column(
				children: [
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
				],
			),
		);
	}
}