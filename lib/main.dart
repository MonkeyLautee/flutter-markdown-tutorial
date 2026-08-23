import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_quill/flutter_quill.dart';

void main() async {
	WidgetsFlutterBinding.ensureInitialized();
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({super.key});
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			localizationsDelegates: const [
		    GlobalMaterialLocalizations.delegate,
		    GlobalWidgetsLocalizations.delegate,
		    GlobalCupertinoLocalizations.delegate,
		    FlutterQuillLocalizations.delegate,
		  ],
		  supportedLocales: const [
		    Locale('en', 'US'),
		  ],
			debugShowCheckedModeBanner: false,
			title: 'Markdown',
			home: const Home(),
		);
	}
}