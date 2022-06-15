class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarURL;

  ChatModel(this.name, this.message, this.time, this.avatarURL);
}

List<ChatModel> chatList = [
  new ChatModel(
    'Prasun Nandy',
    'Hey Buddy. What\'s up?',
    "5:30 PM",
    "https://prasunnandy.me/images/mypic.jpg",
  ),
  new ChatModel(
    'Shaibal Saha',
    'Are you coming tonight for the game?',
    "7:21 PM",
    "https://i.pinimg.com/280x280_RS/b2/f8/47/b2f847ee2b874a5e5ca2f2feac96d6c8.jpg",
  ),
  new ChatModel(
    'Subroto Chakraborty',
    'I am having my dinner. Let me finish it first.',
    "10:14 PM",
    "https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg",
  ),
];
