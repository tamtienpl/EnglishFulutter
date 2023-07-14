String formatNum(String num) {
  String fnum = "";
  int counter = 0;

  for (int i = num.length - 1; i >= 0; i--) {
    if (i == num.length - 1) {
      fnum = num[i];
    } else if (counter % 3 != 0) {
      fnum = num[i] + fnum;
    } else {
      fnum = '${num[i]},$fnum';
    }
    counter++;
  }
  return fnum;
}

String h(int n) {
  Map tow = {
    1: ['one', ''],
    2: ['two', 'twenty'],
    3: ['three', 'thirty'],
    4: ['four', 'forty'],
    5: ['five', 'fifty'],
    6: ['six', 'sixty'],
    7: ['seven', 'seventy'],
    8: ['eight', 'eighty'],
    9: ['nine', 'ninety'],
    10: ['ten', ''],
    11: ['eleven', ''],
    12: ['twelve', ''],
    13: ['thirteen', ''],
    14: ['fourteen', ''],
    15: ['fifteen', ''],
    16: ['sixteen', ''],
    17: ['seventeen', ''],
    18: ['eighteen', ''],
    19: ['nineteen', '']
  };

  int huns = n ~/ 100;
  int dozens = n % 100;
  int tens = dozens ~/ 10;
  int units = dozens % 10;  
  String w = '';

  if (huns > 0) {
    w += tow[huns][0] + ' hundred';
    if (dozens > 0){
      w += ' and ';
    }
  }
  if (dozens > 0) {
    if (dozens > 19) {
      w += tow[tens][1];
      if (units > 0) {
        w += '-'; 
        w += tow[units][0];
      }
    } else { 
    w += tow[dozens][0];
    }
  }
  return w;
}

List<String> toWord(String inputsn) {
  String sn = '';
  String w = '';

  inputsn.length > 12 ? sn = inputsn.substring(0, 12) : sn = inputsn;

  if (int.parse(sn) == 0) {
    w += 'zero';
  } else {
    int n = int.parse(sn);
    int bil = n ~/ 1000000000;
    int mil = n % 1000000000 ~/ 1000000;
    int tho = n % 1000000 ~/ 1000;
    int hun = n % 1000;

    if (bil > 0) {
      w += '${h(bil)} billion, ';
    }
    if (mil > 0) {
      w += '${h(mil)} million, ';
    }
    if (tho > 0) {
      w += '${h(tho)} thousand, ';
    }
    if (hun > 0){
      if (hun < 100 && n > 1000){
        w += 'and ';
      }
      w += h(hun);
    }
  }
  if (w.startsWith(' and ')){
    w = w.substring(5);
  }
  if (w.endsWith(', ')){
    w = w.substring(0, w.length - 2);
  }
  String fnum = formatNum(sn);
  w = w.replaceFirst(w[0], w[0].toUpperCase());

  return inputsn.length > 12 ? [fnum, '$w (first 12 digits).'] 
                             : [fnum, '$w.'];
  }
