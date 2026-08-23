import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';

class Approach1 extends StatefulWidget {
	final String mdText;
	const Approach1(this.mdText,{super.key});
	@override
	State<Approach1> createState() => _Approach1State();
}

class _Approach1State extends State<Approach1> {

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Approach 1'),
			),
			body: Column(
				children: [
					Expanded(
						child: Markdown(data:widget.mdText),
					),
				],
			),
		);
	}
}