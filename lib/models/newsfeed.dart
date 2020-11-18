class NewsFeed {
  String owner;
  String avatarUrl;
  String date;
  String price;
  String content;
  String imageUrl;

  NewsFeed(
      {this.owner,
      this.avatarUrl,
      this.date,
      this.price,
      this.content,
      this.imageUrl});
}

final List<NewsFeed> newsfeed = [
  NewsFeed(
      owner: 'Martin Palmer',
      avatarUrl: 'assets/images/person1.jpg',
      date: 'Today, 03:24 pm',
      content:'What is the loop of Creation? How is there something from nothng? In spite of the fact that it is impossible to prove that',
      imageUrl:'assets/images/skyscrapper.jfif',
      price:'\$320.00',
      ),
  NewsFeed(
      owner: 'Pearl Myers',
      avatarUrl: 'assets/images/person2.jfif',
      date: 'Yesterday',
      content:'I am looking for a chilled out roommate for a house on the 17th floor of a XZY appartmet',
      imageUrl:null,
      price:'\$290.00',
      ),
  NewsFeed(
      owner: 'Gary Rose',
      avatarUrl: 'assets/images/person3.jfif',
      date: 'Yesterday',
      content:'There is this awesome event happening . Let\'s join it guys',
      imageUrl:null,
      price:'\$100.00',
      ), 
];
