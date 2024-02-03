// main function start

void main() {
  //Number 4
  print('racecar: ${isCircularPalindrome('racecar')}');
  print('hello world: ${isCircularPalindrome('hello world')}');
  print('mAlAyAlaM: ${isCircularPalindrome('mAlAyAlaM')}');
  var data = '🍔';
  var runes = data.runes;
  //Number 5
  print(replaceEmoticons(
      '''I'm feeling 🤔 about the upcoming ✈️ trip. Will we see ️🗺 landmarks?\n'''));
  print(replaceEmoticons(
      '''🥷🏼! 🎊 for the 🥷🏼 birthday surprise! ☄️ to the party place!'''));
}

bool isCircularPalindrome(String value) {
  String char = value.toLowerCase();
  int start = 0;
  int end = char.length - 1;
  while (start < end) {
    if (char[start] != char[end]) {
      return false;
    }
    start++;
    end--;
  }
  return true;
}

String replaceEmoticons(String value) {
  final Map<String, String> emoticonMap = {
    '\u{1f354}': 'burger',
    '\u{1f35f}': 'fries',
    '\u{1f355}': 'pizza',
    '\u2708\ufe0f': 'airplane',
    '\u{1f6f3}': 'cruise ship',
    '\u{1f5fa}': 'map',
    '\u{1f604}': 'happy',
    '\u{1f979}': 'sad',
    '\u{1f914}': 'thinking',
    '\u{1f41d}': 'bee',
    '\u{1f916}': 'thing',
    '\u{1f38a}': 'celebration',
    '\u{1f977}\u{1f3fc}': 'keep it secret',
    '\u{2604}\u{fe0f}': 'blast off',
    '\u{1f9d1}\u{200d}\u{1f373}\u{002b}\u{1f374}': 'chef coocks a dish',
    '\u{0020}\u{1f6b5}\u{200d}\u{2640}\u{fe0f}\u{002b}\u{1f38a}': 'win a race',
  };

  String result = value;
  emoticonMap.forEach((emoticon, replacement) {
    if (result.contains(emoticon)) {
      result = result.replaceAll(emoticon, replacement);
    }
  });

  return result;
}
