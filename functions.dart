import 'participles.dart';
import 'nounsverbs.dart';
import 'dart:math';

String stateVerbs() {
  var lnoings = noings.replaceAll('\n', '').split(' ');
  int i = Random().nextInt(lnoings.length - 10);
  var selectedList = lnoings.sublist(i, i + 10);
  String verbs = '${selectedList.join(' ')} (Tap again for more)';
  return verbs.trim();
}

String intransitives() {
  var lnoobjs = noobjs.replaceAll('\n', '').split(' ');
  int i = Random().nextInt(lnoobjs.length - 10);
  var selectedList = lnoobjs.sublist(i, i + 10);
  String verbs = '${selectedList.join(' ')} (Tap again for more)';
  return verbs.trim();
}

String specialSings() {
  var lsingwiths = singwiths.replaceAll('\n', '').split(' ');
  int i = Random().nextInt(lsingwiths.length - 10);
  var selectedList = lsingwiths.sublist(i, i + 10);
  String sings = '${selectedList.join(' ')} (Tap again for more)';
  return sings.trim();
}

String specialPlus() {
  var lplunos = plunos.replaceAll('\n', '').split(', ');
  int i = Random().nextInt(lplunos.length - 10);
  var selectedList = lplunos.sublist(i, i + 10);
  String plus = '${selectedList.join(' ')} (Tap again for more)';
  return plus.trim();
}

String singPluSame() {
  return nounssingequalplu;
}

String theAdjectives() {
  var ltheadjs = theadjs.replaceAll('\n', '').split(', ');
  int i = Random().nextInt(ltheadjs.length - 10);
  var selectedList = ltheadjs.sublist(i, i + 10);
  String adjs = '';
  for (var the in selectedList) {
    adjs += '$the, ';
  }
  return '${adjs.trim()} (Tap again for more)';
}

String getRealSub(String s) {
  s = s.toLowerCase();
  String subPhrase = '';
  var lnounPhrase = s.split(' ');
  var louters = outers.replaceAll('\n', '').split(', ');

  //exclude words from preposition
  for (var word in lnounPhrase) {
    if (louters.contains(word)) {
      break;
    } else {
      subPhrase += '$word ';
    }
  }
  return subPhrase.trim();
}

bool itisplu(String s) {
  String realSub = getRealSub(s);
  var lsingwiths = singwiths.replaceAll('\n', '').split(' ');
  var lplural = plunos.replaceAll('\n', '').split(', ');
  var ltheadjs = theadjs.replaceAll('\n', '').split(', ');
  bool isplu = false;

  //check normal noun + 's'
  for (var word in realSub.split(' ')) {
    //for (var asingwiths in lsingwiths) {
    if (word.endsWith("'s")) {
      continue;
    } else if (word.endsWith('s') && !lsingwiths.contains(word)) {
      isplu = true;
    }
  }

  //check plunos
  for (var word in realSub.split(' ')) {
    for (var plu in lplural) {
      if (word == plu) {
        isplu = true;
        break;
      }
    }
  }

  //check 'and'
  for (var word in realSub.split(' ')) {
    if (word == 'and') {
      isplu = true;
    }
  }

  //check the + adj
  for (var x in ltheadjs) {
    if (x == realSub) {
      isplu = true;
      break;
    }
  }

  if (s.endsWith(' ')) {
    isplu == true ? isplu = false : isplu = true;
  }

  return isplu;
}

bool getI(String s) {
  var subPhrase = getRealSub(s);
  bool i = false;
  for (var w in subPhrase.split(' ')) {
    if (w == 'i') {
      i = true;
      break;
    }
  }
  return i;
}

String affBe(String t, String s) {
  String v = '';

  if (t == 'Present') {
    if (itisplu(s)) {
      v = 'are';
    } else if (getI(s)) {
      v = 'am';
    } else {
      v = 'is';
    }
  }

  if (t == 'Past') {
    if (itisplu(s)) {
      v = 'were';
    } else {
      v = 'was';
    }
  }

  if (t == 'Future') {
    v = 'will be';
  }

  if (t == 'Present P') {
    if (itisplu(s) || getI(s)) {
      v = 'have been';
    } else {
      v = 'has been';
    }
  }
  if (t == 'Past P') {
    v = 'had been';
  }
  if (t == 'Future P') {
    v = 'will have been';
  }
  return v;
}

List<String> splitAv(String ab) {
  ab = ab.toLowerCase();
  String vm = ''; //v main
  String vs = ''; //vsub
  ab.trim().contains(' ') ? vm = ab.split(' ')[0] : vm = ab;
  vm == ab ? vs = '' : vs = ab.substring(ab.indexOf(' ') + 1, ab.length);
  return [vm, vs];
}

String affAv(String t, String s, String ab) {
  String vm = splitAv(ab.trim())[0];
  late String vs;
  String vf = '';

  switch (t) {
    case 'Present':
      {
        if (itisplu(s) || getI(s)) {
          vf = vm;
        } else {
          if (vm == 'have') {
            vf = 'has';
          } else if (!('aeiou'.contains(vm[vm.length - 2])) &&
              vm.endsWith('y')) {
            vf = '${vm.substring(0, vm.length - 1)}ies';
          } else if (['o', 's', 'x'].contains(vm[vm.length - 1])) {
            vf = '${vm}es';
          } else if (vm.length > 2 &&
              ['ch', 'sh'].contains(vm.substring(vm.length - 2, vm.length))) {
            vf = '${vm}es';
          } else {
            vf = '${vm}s';
          }
        }
      }
      break;

    case 'Past':
      {
        p4(vm)[1] == ' ' ? vf = p4(vm)[0] : vf = p4(vm)[1];
      }
      break;

    case 'Future':
      {
        vf = 'will $vm';
      }
      break;

    case 'Present P':
      {
        if (itisplu(s) || getI(s)) {
          p4(vm)[2] == ' '
              ? vf = 'have ${p4(vm)[0]}'
              : vf = 'have ${p4(vm)[2]}';
        } else {
          p4(vm)[2] == ' ' ? vf = 'has ${p4(vm)[0]}' : vf = 'has ${p4(vm)[2]}';
        }
      }
      break;

    case 'Past P':
      {
        p4(vm)[2] == ' ' ? vf = 'had ${p4(vm)[0]}' : vf = 'had ${p4(vm)[2]}';
      }
      break;

    case 'Future P':
      {
        p4(vm)[2] == ' '
            ? vf = 'will have ${p4(vm)[0]}'
            : vf = 'will have ${p4(vm)[2]}';
      }
      break;
  }

  if (ab.trim().contains(' ')) {
    vs = ab.substring(ab.indexOf(' ') + 1, ab.length);
    vf += ' $vs';
  }
  return vf;
}

String negAv(String t, String s, String ab) {
  String vm = splitAv(ab.trim())[0];
  late String vs;
  String vf = '';

  if (t == 'Present') {
    if (itisplu(s) || getI(s)) {
      vf = "don't $vm";
    } else {
      vf = "doesn't $vm";
    }
  }
  if (t == 'Past') {
    vf = "didn't $vm";
  }
  if (t == 'Future') {
    vf = "wont' $vm";
  }
  if (t == 'Present P') {
    if (itisplu(s) || getI(s)) {
      vf = "haven't ";
    } else {
      vf = "hasn't ";
    }
    p4(vm)[2] == ' ' ? vf += p4(vm)[0] : vf += p4(vm)[2];
  }
  if (t == 'Past P') {
    p4(vm)[2] == ' ' ? vf = "hadn't ${p4(vm)[0]}" : vf = "hadn't ${p4(vm)[2]}";
  }
  if (t == 'Future P') {
    p4(vm)[2] == ' '
        ? vf = "won't have ${p4(vm)[0]}"
        : vf = "won't have ${p4(vm)[2]}";
  }
  if (ab.trim().contains(' ')) {
    vs = ab.substring(ab.indexOf(' ') + 1, ab.length);
    vf += ' $vs';
  }
  return vf;
}

List checkNoobjVerb(String ab, String o) {
  ab = ab.toLowerCase();
  String vm = splitAv(ab.trim())[0];
  bool istrue = false;
  var wordsNoobjs = noobjs.split(' ');
  for (var word in wordsNoobjs) {
    if (word == vm && o != '') {
      istrue = true;
      break;
    }
  }
  return [istrue, 'Either use a Transitive verb or leave Obj blank!'];
}

bool checkNoingVerb(String ab) {
  ab = ab.toLowerCase();
  String vm = splitAv(ab.trim())[0];
  bool istrue = false;
  var wordsNoings = noings.split(' ');
  for (var word in wordsNoings) {
    if (word == vm) {
      istrue = true;
      break;
    }
  }
  return istrue;
}

String affSent(String t, String s, String ab, String o, String c) {
  ab = ab.toLowerCase();
  String rs = '';

  if (checkNoobjVerb(ab, o)[0]) {
    rs = checkNoobjVerb(ab, o)[1];
  } else {
    if (ab == 'be') {
      rs = '${s.trim()} ${affBe(t, s)}';
      c == '' ? rs : rs += ' $c';
    } else {
      rs = '${s.trim()} ${affAv(t, s, ab)}';
      o == '' ? rs : rs += ' ${o.trim()}';
      c == '' ? rs : rs += ' $c';
    }

    rs = rs[0].toUpperCase() + rs.substring(1, rs.length);
    if (rs.contains(' i ')) {
      rs = rs.replaceFirst(' i ', ' I ');
    }
  }

  return '$rs.\n';
}

String negSent(String t, String s, String ab, String o, String c) {
  ab = ab.toLowerCase();
  String rs = '';

  if (checkNoobjVerb(ab, o)[0]) {
    rs = checkNoobjVerb(ab, o)[1];
  } else {
    if (ab == 'be') {
      if (t == 'Present') {
        if (itisplu(s)) {
          rs = "${s.trim()} aren't";
        } else if (getI(s)) {
          rs = "${s.trim()}'m not";
        } else {
          rs = "${s.trim()} isn't";
        }
      }

      if (t == 'Past') {
        if (itisplu(s)) {
          rs = "${s.trim()} weren't";
        } else {
          rs = "${s.trim()} wasn't";
        }
      }
      if (t == 'Future') {
        rs = "${s.trim()} won't be";
      }
      if (t == 'Present P') {
        if (itisplu(s) || getI(s)) {
          rs = "${s.trim()} haven't been";
        } else {
          rs = "${s.trim()} hasn't been";
        }
      }
      if (t == 'Past P') {
        rs = "${s.trim()} hadn't been";
      }
      if (t == 'Future P') {
        rs = "${s.trim()} won't have been";
      }
    } else {
      rs = '${s.trim()} ${negAv(t, s, ab)}';
    }

    rs = rs.trim();
    o == '' ? rs : rs += ' ${o.trim()}';
    c == '' ? rs : rs += ' $c';

    rs = rs[0].toUpperCase() + rs.substring(1, rs.length);
    if (rs.contains(' i ')) {
      rs = rs.replaceFirst(' i ', ' I ');
    }
  }

  return '$rs.\n';
}

String yesnoPhrase(String t, String s, String ab) {
  String vm = splitAv(ab.trim())[0];
  late String vs;
  String phrase = '';
  
  if (ab == 'be') {
    if (t == 'Present' || t == 'Past') {
      phrase = '${affBe(t, s)} ${s.trim()}';
    }
    if (t == 'Future') {
      phrase = 'Will ${s.trim()} be';
    }
    if (t == 'Present P') {
      if (itisplu(s) || getI(s)) {
        phrase = 'Have ${s.trim()} been';
      } else {
        phrase = 'Has ${s.trim()} been';
      }
    }
    if (t == 'Past P') {
      phrase = 'Had ${s.trim()} been';
    }
    if (t == 'Future P') {
      phrase = 'Will ${s.trim()} have been';
    }
  } else {
    if (t == 'Present') {
      if (itisplu(s) || getI(s)) {
        phrase = 'Do ${s.trim()} $vm';
      } else {
        phrase = 'Does ${s.trim()} $vm';
      }
    }
    if (t == 'Past') {
      phrase = 'Did ${s.trim()} $vm';
    }
    if (t == 'Future') {
      phrase = 'Will ${s.trim()} $vm';
    }
    if (t == 'Present P') {
      itisplu(s) || getI(s)
        ? phrase = 'Have ${s.trim()} ' 
        : phrase = 'Has ${s.trim()} ';
      p4(vm)[2] == ' '
          ? phrase += p4(vm)[0].trim()
          : phrase += p4(vm)[2].trim();
    }
    if (t == 'Past P') {
      p4(vm)[2] == ' '
          ? phrase = 'Had ${s.trim()} ${p4(vm)[0]}'
          : phrase = 'Had ${s.trim()} ${p4(vm)[2]}';
    }
    if (t == 'Future P') {
      p4(vm)[2] == ' '
          ? phrase = 'Will ${s.trim()}  have ${p4(vm)[0].trim()}'
          : phrase = 'Will ${s.trim()}  have ${p4(vm)[2].trim()}';
    }
  }
  if (ab.trim().contains(' ')) {
    vs = ab.substring(ab.indexOf(' ') + 1, ab.length);
    phrase += ' $vs';
  }
  phrase =
      phrase[0].toUpperCase() + phrase.substring(1, phrase.length); //for Be
  return phrase;
}

String askYesno(String q, String t, String s, String ab, String o, String c) {
  ab = ab.toLowerCase();
  String rs = '';

  if (checkNoobjVerb(ab, o)[0]) {
    rs = checkNoobjVerb(ab, o)[1];
  } else {
    rs = yesnoPhrase(t, s, ab);
    o == '' ? rs : rs += ' ${o.trim()}';
    c == '' ? rs : rs += ' $c';
  }
  rs.contains(' i ') ? rs = rs.replaceAll(' i ', ' I ') : rs;
  return '$rs?\n';
}

String askWh(String q, String t, String s, String ab, String o, String c) {
  ab = ab.toLowerCase();
  String rs = '';
  String asksub = affSent(t, 'he', ab, o, c).trim();
  asksub = asksub.substring(3, asksub.length);
  String askobj = yesnoPhrase(t, s, ab);
  askobj = askobj.replaceFirst(askobj[0], askobj[0].toLowerCase());
  String askcom = askobj;

  if (checkNoobjVerb(ab, o)[0]) {
    rs = checkNoobjVerb(ab, o)[1];
  } else {
    switch (q) {
      case 'Who sub':
        rs = 'Who ${asksub.substring(0, asksub.length - 1)}';
        break;
      case 'What sub':
        rs = 'What ${asksub.substring(0, asksub.length - 1)}';
        break;
      case 'Who obj':
        rs = 'Who $askobj $c';
        break;
      case 'What obj':
        rs = 'What $askobj $c';
        break;
      case 'Ask com':
        rs = 'Where/When/Why/How $askcom';
        o == '' ? rs : rs += ' $o';
        break;
    }
  }
  rs.contains(' i ') ? rs = rs.replaceAll(' i ', ' I ') : rs;
  rs.endsWith('!')
      ? rs = 'Intransitive "$ab" does not take objects, does it'
      : rs;
  return '${rs.trim()}?\n';
}

String continuous(String t, String s, String ab, String o, String c) {
  ab = ab.toLowerCase();
  String vm = splitAv(ab.trim())[0];
  String vs = splitAv(ab.trim())[1];
  String rs = '';

  if (checkNoobjVerb(ab, o)[0]) {
    rs = checkNoobjVerb(ab, o)[1];
  } else {
    rs = '${s.trim()} ${affBe(t, s)} ${p4(vm)[3]}';

    if (ab.trim().contains(' ')) {
      rs += ' $vs';
    }

    o == '' ? rs : rs += ' ${o.trim()}';
    c == '' ? rs : rs += ' $c';
    rs = rs[0].toUpperCase() + rs.substring(1, rs.length);
    if (rs.contains(' i ')) {
      rs = rs.replaceFirst(' i ', ' I ');
    }
    if (checkNoingVerb(ab)) {
      rs += '.\n(Oops! Why "ing" with the Stative verb "$ab"?)';
    }
  }
  return '$rs.\n';
}

String passive(String t, String s, String ab, String o, String c) {
  ab = ab.toLowerCase();
  String vm = splitAv(ab.trim())[0];
  String vs = splitAv(ab.trim())[1];
  String agent = '';
  String p = '';
  String rs = '';

  if (checkNoobjVerb(ab, o)[0]) {
    rs = checkNoobjVerb(ab, o)[1];
  } else {
    // agent and new s
    agent = s;
    s = o.toLowerCase();

    var subWords = s.split(' ');
    List<String> personalSubsNoShe = ['i', 'he', 'they', 'we'];
    List<String> personalObjsNoHer = ['me', 'him', 'them', 'us'];

    for (String sw in subWords) {
      for (String po in personalObjsNoHer) {
        if (sw.toLowerCase() == po) {
          int posPo = personalObjsNoHer.indexOf(po);
          int posSw = subWords.indexOf(sw);
          subWords[posSw] = personalSubsNoShe[posPo];
        }
      }
    }

    s = subWords.join(' ');

    String fb = affBe(t, s);
    p4(vm)[2] == ' ' ? p = p4(vm)[0] : p = p4(vm)[2];
    ab.contains(' ') ? p += ' $vs' : p;

    rs = '${s.trim()} $fb $p';

    var agentWords = agent.split(' ');
    List<String> personalSubs = ['i', 'he', 'she', 'they', 'we'];
    List<String> personalObjs = ['me', 'him', 'her', 'them', 'us'];

    for (String aw in agentWords) {
      for (String ps in personalSubs) {
        if (aw.toLowerCase() == ps) {
          int posPs = personalSubs.indexOf(ps);
          int posAw = agentWords.indexOf(aw);
          agentWords[posAw] = personalObjs[posPs];
        }
      }
    }

    agent = agentWords.join(' ').trim();

    c == '' ? rs += ' (by $agent)' : rs += ' $c (by $agent)';

    if (rs.contains(' i ')) {
      rs = rs.replaceAll(' i ', ' I ');
    }

    for (var word in o.split(' ')){
      if (word == 'her'){
        rs += ".\n!'Her' is the subject? Use 'a girl', 'Sue', ... instead";
      }
    }
    rs = rs[0].toUpperCase() + rs.substring(1, rs.length);
  }

  return '$rs.\n';
}

String checkIrv(String ab) {
  String vm = splitAv(ab.trim())[0];
  List lines = irvsource().split('\n');
  String rs = '';
  for (String line in lines) {
    if (line.split('\t')[0] == vm ||
        line.split('\t')[1] == vm ||
        line.split('\t')[2] == vm) {
      rs = line;
      break;
    } else {
      rs = '"$ab" is not an irregular verb.';
    }
  }
  return rs;
}

String a2z(String za) {
  var azlist = za.split('\n').reversed;
  String lines = '';
  for (String line in azlist) {
    lines += '$line\n';
  }
  return lines.trim();
}
