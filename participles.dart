import 'nounsverbs.dart';

List<String> p4(String av) {
  Map ivDict() {
    String irv = irvsource();
    Map ivdict = {};
    List<String> lines = irv.split('\n');
    for (var line in lines) {
      ivdict[line.split('\t')[0]] = [line.split('\t')[1], line.split('\t')[2]];
    }
    return ivdict;
  }

  List<String> ivPP(String av) {
    if (ivDict().keys.contains(av)) {
      return ivDict()[av];
    } else {
      return [' ', ' '];
    }
  }

  String edP(String av) {
    String edp = '';
    if (ivDict().keys.contains(av)) {
      return ' ';
    } else {
      if (av[av.length - 1] == 'e') {
        edp = '${av}d';
      } else if (av.endsWith('w') || av.endsWith('x')) {
        edp = '${av}ed';
      } else if (!(stress.split(' ').contains(av)) &&
          'aeiou'.contains(av[av.length - 2]) &&
          !('aeiouy'.contains(av[av.length - 1])) &&
          !('aeiou'.contains(av[av.length - 3]))) {
        edp = '$av${av[av.length - 1]}ed';
      }  else if (av.endsWith('c')) {
        edp = '${av.substring(0, av.length - 1)}ked';
      } else if (av.endsWith('y') &&
          !(['ay', 'ey', 'oy']
              .contains(av.substring(av.length - 2, av.length)))) {
        edp = '${av.substring(0, av.length - 1)}ied';
      } else if (!('aeiou'.contains(av[av.length - 1]) &&
          'aeiou'.contains(av[av.length - 2]) &&
          'aeiou'.contains(av[av.length - 3]))) {
        edp = '${av}ed';
      } else {
        edp = '${av}ed';
      }
    }
    return edp;
  }

  String prP(String av) {
    String prp = '';

    if (av == 'be') {
      prp = '${av}ing';
    } else if ('wxy'.contains(av[av.length - 1])) {
      prp = '${av}ing';
    } else if (av[av.length - 1] == 'c') {
      prp = '${av}king';
    } else if ('i' == av[av.length - 2] && 'e' == av[av.length - 1]) {
      prp = '${av.substring(0, av.length - 2)}ying';
    } else if ('y' == av[av.length - 2] && 'e' == av[av.length - 1]) {
      prp = '${av}ing';
    } else if (!('aeiou'.contains(av[av.length - 2])) &&
        av[av.length - 1] == 'e') {
      prp = '${av.substring(0, av.length - 1)}ing';
    } else if (!(stress.contains(av)) &&
        'aeiou'.contains(av[av.length - 2]) &&
        !('aeiouy'.contains(av[av.length - 1])) &&
        !('aeiou'.contains(av[av.length - 3]))) {
      prp = '$av${av[av.length - 1]}ing';
    } else {
      prp = '${av}ing';
    }
    return prp;
  }

  return [edP(av)] + ivPP(av) + [prP(av)];
}
