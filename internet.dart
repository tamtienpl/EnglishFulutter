import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


launchUrlBook() async { // or Future<void>...
  final Uri url = Uri.parse('https://www.gutenberg.org/ebooks/');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

Future<void> launchUrlAudio() async {
  final Uri url = Uri.parse('https://play.google.com/store/apps/details?id=sanity.freeaudiobooks&hl=en_US&gl=US');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

Future<void> launchUrlVocabulary() async {
  final Uri url = Uri.parse('https://www.wordhippo.com/what-is/the-plural-of/hippo.html');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

Future<void> launchUrlGrammar() async {
  final Uri url = Uri.parse('https://www.perfect-english-grammar.com');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

Future<void> launchUrlSpeechtotext() async {
  final Uri url = Uri.parse('https://www.textfromtospeech.com/en/voice-to-text/');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

class UrlBooks extends StatelessWidget {
  const UrlBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: const Text('From the Internet'),
          backgroundColor: Colors.green,
        ),
        body: //SafeArea(
            //child:
            Center(
          child: Column(
            children: [
              Container(
                height: 120.0,
              ),
              const Text(
                'Improving Skills:',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(height: 20),
              const MaterialButton (
                onPressed: launchUrlBook,
                textColor: Colors.black,
                padding: EdgeInsets.all(15.0),
                child: Text('Reading'),
              ),
              Container(height: 10),
              const MaterialButton(
                onPressed: launchUrlAudio,
                textColor: Colors.black,
                padding: EdgeInsets.all(15.0),
                child: Text('Listening'),
              ),
              Container(height: 10),
              const MaterialButton(
                onPressed: launchUrlVocabulary,
                textColor: Colors.black,
                padding: EdgeInsets.all(15.0),
                child: Text('Vocabulary'),
              ),
              Container(height: 10),
              const MaterialButton(
                onPressed: launchUrlGrammar,
                textColor: Colors.black,
                padding: EdgeInsets.all(15.0),
                child: Text('Grammar'),
              ),
              Container(height: 10),
              const MaterialButton(
                onPressed: launchUrlSpeechtotext,
                textColor: Colors.black,
                padding: EdgeInsets.all(15.0),
                child: Text('Speech to text'),
              ),
            ],
          ),
        ),
      ),
    );
    //);
  }
}
