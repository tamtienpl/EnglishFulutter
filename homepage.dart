import 'package:flutter/material.dart';
import 'basicsents.dart';
import 'toword.dart';
import 'functions.dart';
import 'internet.dart';
import 'mytts.dart';
import 'hivepage.dart';

String lines = '';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  String _value = '';
  String numword = '';
  var specialWordField = TextEditingController();
  var tenseField = TextEditingController();
  final askField = TextEditingController();
  final subField = TextEditingController();
  final abField = TextEditingController();
  final objField = TextEditingController();
  final comField = TextEditingController();
  final linesField = TextEditingController();
  String t = '';
  String q = '';
  String s = '';
  String ab = '';
  String o = '';
  String c = '';

  @override
  void dispose() {
    specialWordField.dispose();
    super.dispose();
    tenseField.dispose();
    super.dispose();
    askField.dispose();
    super.dispose();
    subField.dispose();
    super.dispose();
    abField.dispose();
    super.dispose();
    objField.dispose();
    super.dispose();
    comField.dispose();
    super.dispose();
    linesField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeHive(),
                ),
              );
            },
            child: const Text('Note'),
          ),
          title: const Text("Write&Say",
              style: TextStyle(color: Colors.amber, fontSize: 22)),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UrlBooks(),
                  ),
                );
              },
              child: const Text('Https'),
            ),
            TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    specialWordField.text = '';
                    tenseField.text = '';
                    askField.text = '';
                    subField.text = '';
                    abField.text = '';
                    objField.text = '';
                    comField.text = '';
                    linesField.text = '';
                  });
                },
                child: const Text('Clear')),
            IconButton(
              onPressed: () async {
                if (linesField.text == '') {
                  linesField.text = 'Oops. Make sentences first!';
                  await Future.delayed(const Duration(seconds: 3));
                  linesField.clear();
                } else {
                  lines = a2z(linesField.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyTts(),
                    ),
                  );
                }
              },
              iconSize: 26,
              icon: const Icon(Icons.play_circle),
            )
          ],
        ),
        body: //Column(crossAxisAlignment: CrossAxisAlignment.start,
            ListView(
                padding: const EdgeInsets.only(left: 4, right: 4),
                children: [
              Row(children: [
                const SizedBox(width: 4),
                SizedBox(
                    height: 14,
                    width: 86,
                    child: TextField(
                        controller: tenseField,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 8),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                        style: const TextStyle(color: Colors.red))),
                SizedBox(
                    width: 36,
                    child: PopupMenuButton(
                      color: Colors.yellow[100],
                      elevation: 14,
                      icon: const Icon(Icons.access_time, //menu
                          color: Colors.blue), //default is Icon.more_vert
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                            value: "Present", child: Text("Present")),
                        const PopupMenuItem(value: "Past", child: Text("Past")),
                        const PopupMenuItem(
                            value: "Future", child: Text("Future")),
                        const PopupMenuItem(
                            value: "Present P", child: Text("Present perfect")),
                        const PopupMenuItem(
                            value: "Past P", child: Text("Past perfect")),
                        const PopupMenuItem(
                            value: "Future P", child: Text("Future perfect")),
                      ],
                      onSelected: (String value) {
                        setState(() {
                          _value = value;
                          tenseField.text = _value;
                        });
                      },
                    )),
                const SizedBox(width: 13),
                SizedBox(
                    height: 14,
                    width: 70,
                    child: TextField(
                        controller: askField,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 8),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                        style: const TextStyle(color: Colors.red))),
                SizedBox(
                    width: 40,
                    child: PopupMenuButton(
                        color: Colors.yellow[100],
                        elevation: 14,
                        icon:
                            const Icon(Icons.question_mark, color: Colors.blue),
                        itemBuilder: (context) => [
                              const PopupMenuItem(
                                  value: 'Yes-no', child: Text("Yes-no")),
                              const PopupMenuItem(
                                  value: 'Who sub', child: Text("Who sub")),
                              const PopupMenuItem(
                                  value: 'What sub', child: Text("What sub")),
                              const PopupMenuItem(
                                  value: 'Who obj', child: Text("Who obj")),
                              const PopupMenuItem(
                                  value: 'What obj', child: Text("What obj")),
                              const PopupMenuItem(
                                  value: 'Ask com', child: Text("Ask com")),                            ],
                        onSelected: (String value) {
                          setState(() {
                            _value = value;
                            askField.text = _value;
                          });
                        })),
                SizedBox(
                    height: 14,
                    width: 82,
                    child: TextField(
                        controller: specialWordField,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 8),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                        style: const TextStyle(color: Colors.red))),
                SizedBox(
                    width: 38,
                    child: PopupMenuButton(
                        color: Colors.yellow[100],
                        elevation: 14,
                        icon: const Icon(Icons.warning, color: Colors.blue),
                        itemBuilder: (context) => [
                              const PopupMenuItem(
                                  value: 'State verb',
                                  child: Text("State verb")),
                              const PopupMenuItem(
                                  value: 'Intransitive',
                                  child: Text("Intransitive")),
                              const PopupMenuItem(
                                  value: 'Sing+s', child: Text("Sing+s")),
                              const PopupMenuItem(
                                  value: 'Plural-s', child: Text("Plural-s")),
                              const PopupMenuItem(
                                  value: 'Sing=Plu', child: Text("Sing=Plu")),
                              const PopupMenuItem(
                                  value: 'The adj.', child: Text("The adj.")),
                            ],
                        onSelected: (String value) {
                          setState(() {
                            _value = value;
                            specialWordField.text = _value;
                            if (_value == 'State verb') {
                              linesField.text =
                                  'State verbs are rarely used in the '
                                  'continuous.\n${stateVerbs()}\n${linesField.text}';
                            }
                            if (_value == 'Intransitive') {
                              linesField.text =
                                  'Intransitive verbs take no objects.\n'
                                  '${intransitives()}\n${linesField.text}';
                            }
                            if (_value == 'Sing+s') {
                              linesField.text =
                                  'Some singlular nouns end with "s".\n'
                                  '${specialSings()}\n${linesField.text}';
                            }
                            if (_value == 'Plural-s') {
                              linesField.text =
                                  'Some plural nouns do not end with "s".\n'
                                  '${specialPlus()}\n${linesField.text}';
                            }
                            if (_value == 'Sing=Plu') {
                              linesField.text =
                                  'Some nouns have the same singular and '
                                  'plural form, here they are set Plural:\n'
                                  '${singPluSame()}\n${linesField.text}';
                            }
                            if (_value == 'The adj.') {
                              linesField.text =
                                  'Example: The poor = all poor people.\n'
                                  '${theAdjectives()}\n${linesField.text}';
                            }
                          });
                        })),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SizedBox(
                    width: 65,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          t = tenseField.text;
                          if (t == '') {
                            t = 'Present';
                            tenseField.text = 'Present';
                          }
                          if (subField.text == '' || abField.text == '') {
                            subField.text = 'i';
                            abField.text = 'make';
                            objField.text = 'this';
                            comField.text = 'for you';
                            linesField.text =
                                "Demo: ${affSent(t, 'i', 'make', 'this', 'for you')}${linesField.text}";
                          } else {
                            s = subField.text;
                            ab = abField.text;
                            o = objField.text;
                            c = comField.text;
                            linesField.text =
                                '${affSent(t, s, ab, o, c)}${linesField.text}';
                          }
                        });
                      },
                      child: const Text('Aff'),
                    )),
                SizedBox(
                    width: 60,
                    child: ElevatedButton(
                      //style: style,
                      onPressed: () {
                        setState(() {
                          t = tenseField.text;
                          if (t == '') {
                            t = 'Present';
                            tenseField.text = 'Present';
                          }
                          if (subField.text == '' || abField.text == '') {
                            subField.text = 'i';
                            abField.text = 'make';
                            objField.text = 'this';
                            comField.text = 'for you';
                            linesField.text =
                                "Demo: ${negSent(t, 'i', 'make', 'this', 'for you')}${linesField.text}";
                          } else {
                            s = subField.text;
                            ab = abField.text;
                            o = objField.text;
                            c = comField.text;
                            linesField.text =
                                '${negSent(t, s, ab, o, c)}${linesField.text}';
                          }
                        });
                      },
                      child: const Text('Neg'),
                    )),
                SizedBox(
                    width: 65,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          q = askField.text;
                          if (q == '') {
                            askField.text = 'Yes-no';
                          }
                          t = tenseField.text;
                          if (t == '') {
                            t = 'Present';
                            tenseField.text = 'Present';
                          }
                          if (subField.text == '' || abField.text == '') {
                            subField.text = 'i';
                            abField.text = 'make';
                            objField.text = 'this';
                            comField.text = 'for you';
                            if (askField.text == 'Yes-no') {
                              linesField.text =
                                  "Demo: ${askYesno(q, t, 'i', 'make', 'this', 'for you')}${linesField.text}";
                            } else {
                              linesField.text =
                                  "Demo: ${askWh(q, t, 'i', 'make', 'this', 'for you')}${linesField.text}";
                            }
                          } else {
                            s = subField.text;
                            ab = abField.text;
                            o = objField.text;
                            c = comField.text;
                            if (askField.text == 'Yes-no') {
                              linesField.text =
                                  askYesno(q, t, s, ab, o, c) + linesField.text;
                            } else {
                              linesField.text =
                                  askWh(q, t, s, ab, o, c) + linesField.text;
                            }
                          }
                        });
                      },
                      child: const Text('Ask'),
                    )),
                SizedBox(
                    width: 65,
                    child: ElevatedButton(
                      //style: style,
                      onPressed: () {
                        setState(() {
                          t = tenseField.text;
                          if (t == '') {
                            t = 'Present';
                            tenseField.text = 'Present';
                          }
                          if (subField.text == '' || abField.text == '') {
                            subField.text = 'i';
                            abField.text = 'make';
                            objField.text = 'this';
                            comField.text = 'for you';
                            linesField.text =
                                "Demo: ${continuous(t, 'i', 'make', 'this', 'for you')}${linesField.text}";
                          } else {
                            s = subField.text;
                            ab = abField.text;
                            o = objField.text;
                            c = comField.text;
                            if (ab == 'be') {
                              linesField.text =
                                  'Main verb "be" is rarely used in the Continuous.\n${linesField.text}';
                            } else {
                              linesField.text =
                                  continuous(t, s, ab, o, c) + linesField.text;
                            }
                          }
                        });
                      },
                      child: const Text('Cont'),
                    )),
                SizedBox(
                    width: 65,
                    child: ElevatedButton(
                      //style: style,
                      onPressed: () {
                        setState(() {
                          t = tenseField.text;
                          if (t == '') {
                            t = 'Present';
                            tenseField.text = 'Present';
                          }
                          if (subField.text == '' ||
                              abField.text == '' ||
                              objField.text == '') {
                            subField.text = 'i';
                            abField.text = 'make';
                            objField.text = 'this';
                            comField.text = 'for you';
                            linesField.text =
                                "Demo: ${passive(t, 'i', 'make', 'this', 'for you')}";
                          } else {
                            s = subField.text;
                            ab = abField.text;
                            o = objField.text;
                            c = comField.text;
                            var rs = passive(t, s, ab, o, c);
                            linesField.text = rs + linesField.text;
                          }
                        });
                      },
                      child: const Text('Pass'),
                    ))]),
              Row(children: [
                const SizedBox(width: 2),
                SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width / 2 - 40,
                    child: TextField(
                      controller: subField,
                      autofocus: true,
                      decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          floatingLabelStyle: TextStyle(fontSize: 16),
                          hintText: "Subject"),
                    )),
                  SizedBox(
                    width: 20,
                    child: 
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (subField.text == '') {
                              subField.text = 'apple';
                            }
                            var sentSearch = getBasicSents(subField.text);
                            linesField.text = '$sentSearch${linesField.text}';
                          });
                        },
                      iconSize: 26,
                      icon: const Icon(Icons.search),
                )),
                const SizedBox(width: 20), 
                SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width / 2 - 50,
                    child: TextField(
                      controller: abField,
                      decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          floatingLabelStyle: TextStyle(fontSize: 16),
                          hintText: "Base Verb"),
                    )),
                SizedBox(
                  width: 40,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        if (abField.text == '') {
                          abField.text = 'write';
                          linesField.text =
                            'Demo: ${checkIrv(abField.text)}\n${linesField.text}';
                        } else {
                        linesField.text =
                            '${checkIrv(abField.text)}\n${linesField.text}';
                            abField.clear();
                        }
                      });
                    },
                    child: const Text('IRV'),
                  ),
                )
              ]),
              Row(children: [
                const SizedBox(width: 2),
                SizedBox(
                    height: 16,
                    width: MediaQuery.of(context).size.width / 2 - 10,
                    child: TextField(
                      controller: objField,
                      decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          floatingLabelStyle: TextStyle(fontSize: 16),
                          hintText: "Object"),
                    )),
                const SizedBox(width: 10),
                SizedBox(
                    height: 16,
                    width: MediaQuery.of(context).size.width / 2 - 50,
                    child: TextField(
                      controller: comField,
                      decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          floatingLabelStyle: TextStyle(fontSize: 16),
                          hintText: "Complement"),
                    )),
                SizedBox(
                  width: 40,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        var n = comField.text;
                        // - and . are OK but not treated here
                        if (n.contains('-') || n.contains('.') || double.tryParse(n) == null) {
                            comField.text = '1234';
                            numword = 'Demo: ${toWord('1234')[1]}';
                        } else {
                          numword = toWord(comField.text)[1];
                          objField.text = toWord(comField.text)[0];
                          comField.clear();
                        }
                      linesField.text = '$numword\n${linesField.text}';
                    });
                    },
                    child: const Text('2W'),
                  ),
                )
              ]),
              TextField(
                controller: linesField,
                maxLines: 12,
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    border: OutlineInputBorder(),
                    floatingLabelStyle: TextStyle(fontSize: 12),
                    hintText: "\nTO RUN:\n"
                        "1 Tap Aff/Neg/Ask/Cont/Pass/Clock/?: A demo.\n\n"
                        "2 Tap Clear. Use your words. Ensure infinitives\n"
                        "   (be, put on, ...)  in Base Verb. Tap Aff, Neg, ...\n\n"
                        "3 Change subject-verb agreement:\n"
                        "   Add a space to the end of the inputs in Subject\n"
                        "   (in Object for a passive) and tap Aff, Neg, ...\n"),
              )
            ]));
  }
}
