import 'package:facebook_clone/models/models.dart';

const User currentUser = User(
  name: 'Yordanos W',
  imageUrl: './assets/images/pro0.jpg',
);

List<User> onlineUsers = [
  ...{
    1: 'Marcus Ng',
    2: 'David Brooks',
    3: 'Jane Doe',
    4: 'Matthew Hinkle',
    5: 'Amy Smith',
    6: 'Ed Morris',
    7: 'Carolyn Duncan',
    8: 'Paul Pinnock',
    9: 'Elixabeth Wong',
  }.entries.map(
        (entry) => User(
            name: entry.value, imageUrl: './assets/images/pro${entry.key}.jpg'),
      ),
];

var i = 9;

List<Story> stories = [
  ...onlineUsers.reversed.map((user) => Story(
      user: user,
      imageUrl: './assets/images/post$i.${i-- == 5 ? 'png' : 'jpg'}',
      isViewd: user.name.length.isOdd))
];

List<Post> posts = [
  const Post(
    user: currentUser,
    caption: 'Check out these cool puppers',
    timeAgo: '58m',
    imageUrl: './assets/images/post0.jpg',
    links: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: onlineUsers[0],
    caption: 'After all still we are here.',
    timeAgo: '${DateTime.now().hour}hr',
    imageUrl: './assets/images/post9.jpg',
    links: 951,
    comments: 759,
    shares: 71,
  ),
  Post(
    user: onlineUsers[3],
    caption:
        'Please enjoy this placeholder text: Lorem ipsum dolar sit amet, consecteur adipiscing elit.',
    timeAgo: '${DateTime.now().second}sec',
    imageUrl: './assets/images/post1.jpg',
    links: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[1],
    caption: 'I was just in random state.',
    timeAgo: '${DateTime.now().minute}m',
    imageUrl: './assets/images/post2.jpg',
    links: 3791,
    comments: 759,
    shares: 371,
  ),
  Post(
    user: onlineUsers[2],
    caption: 'Check out these cool puppers',
    timeAgo: '${DateTime.now().second}sec',
    imageUrl: './assets/images/post3.jpg',
    links: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: onlineUsers[5],
    caption:
        'Please enjoy this placeholder text: Lorem ipsum dolar sit amet, consecteur adipiscing elit.',
    timeAgo: '${DateTime.now().hour}hr',
    imageUrl: './assets/images/post4.jpg',
    links: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[4],
    caption: 'I was just in random state.',
    timeAgo: '${DateTime.now().minute}m',
    imageUrl: './assets/images/post5.png',
    links: 3791,
    comments: 759,
    shares: 371,
  ),
  Post(
    user: onlineUsers[7],
    caption: 'Check out these cool puppers',
    timeAgo: '${DateTime.now().second}sec',
    imageUrl: './assets/images/post7.jpg',
    links: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: onlineUsers[6],
    caption:
        'Please enjoy this placeholder text: Lorem ipsum dolar sit amet, consecteur adipiscing elit.',
    timeAgo: '${DateTime.now().hour}hr',
    imageUrl: './assets/images/post6.jpg',
    links: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[8],
    caption: 'I was just in random state.',
    timeAgo: '${DateTime.now().hour}hr',
    imageUrl: './assets/images/post8.jpg',
    links: 3791,
    comments: 759,
    shares: 371,
  ),
];
