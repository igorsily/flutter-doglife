import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/user-picture.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset('assets/app-logo.png'),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
            child: FlatButton(
              child: Icon(
                Icons.search,
                size: 32,
                color: Colors.black,
              ),
              onPressed: null,
            ),
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
          ],
        ),
      ),
    );
  }
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/322/322868/golden-retriever-puppy.jpg?w=1155&h=1541',
            ),
          ),
          title: Text(
            "Bruce Wayne",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            '6:35 PM',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset('assets/post-picture-001.png'),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
              'Quisque facilisis sem at massa iaculis, et eleifend elit gravida. Fusce sit amet nunc non lectus imperdiet blandit eu non urna. Quisque vulputate ac velit vel bibendum. Sed finibus eros sit amet quam ornare ultrices. Nullam et dui laoreet, fringilla mi quis, dictum libero. Proin condimentum consequat libero, id ultricies diam aliquam eget. Vivamus imperdiet libero sit amet ultrices dignissim. Fusce iaculis dictum velit quis pretium.'),
        ),
      ],
    ),
  );
}
